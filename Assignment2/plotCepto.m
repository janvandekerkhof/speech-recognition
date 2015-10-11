function plotCepto(filename)
    [data, fFs] = audioread(strcat('Sounds/',filename));
    [mfcc, sg, f, t] = GetSpeechFeatures(data, fFs, 0.03, 13);
    for i=1:size(mfcc,1)
        mfcc(i,:) = mfcc(i,:) - mean(mfcc(i,:));
        mfcc(i,:) = mfcc(i,:) / std(mfcc(i,:));
    end
    axis([0, t(size(t,1)-1), 0, f(size(f,1)-1)]);
    imagesc('XData',t,'YData',f,'CData',mfcc);
    axis xy;
    colorbar;
    xlabel('time (seconds)');
    ylabel('frequency');
    title(strcat('Ceptogram for - ', filename))
end