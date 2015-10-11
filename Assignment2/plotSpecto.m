function plotSpecto(filename)
    [data, fFs] = audioread(strcat('Sounds/', filename));
    [mfcc, sg, f, t] = GetSpeechFeatures(data, fFs, 0.03, 5);
    axis xy;
    axis([0, t(size(t,1)-1), 0, f(size(f,1)-1)]);
    imagesc('XData',t,'YData',f,'CData',log(sg));
    colorbar;
    xlabel('time (seconds)');
    ylabel('frequency'); 
    title(strcat('Spectogram for - ', filename));
end