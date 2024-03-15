function dtmfSignal = generateDTMFUsingResonators(fR, fC, fs, duration)
    
    wR = 2*pi*fR/fs;
    wC = 2*pi*fC/fs;
    
    
    N = fs * duration; % Total number of samples
    x = [1, zeros(1, N-1)]; % Impulse signal
    
    bR = [1, -cos(wR)]; % Numerator coefficients for row frequency
    aR = [1, -2*cos(wR), 1]; % Denominator coefficients for row frequency
    
    bC = [1, -cos(wC)]; % Numerator coefficients for column frequency
    aC = [1, -2*cos(wC), 1]; % Denominator coefficients for column frequency
    
    sinusoidR = filter(bR, aR, x);
    sinusoidC = filter(bC, aC, x);
    
    dtmfSignal = sinusoidR + sinusoidC;%output signal
end

