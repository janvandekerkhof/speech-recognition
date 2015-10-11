function computeDynamicFeatures(mfcc)
    velocity = [diff(mfcc,2); zeros(size(mfcc,2))];
    acceleration = [diff(velocity, 
end
    
    