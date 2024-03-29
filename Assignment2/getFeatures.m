function [mfcc, sg, f, t] = getFeatures(filename)
    [data, fFs] = audioread(strcat('Sounds/', filename));
    [mfcc, sg, f, t] = GetSpeechFeatures(data, fFs, 0.03, 13);
    for i=1:size(mfcc,1)
        mfcc(i,:) = mfcc(i,:) - mean(mfcc(i,:));
        mfcc(i,:) = mfcc(i,:) / std(mfcc(i,:));
    end
end
