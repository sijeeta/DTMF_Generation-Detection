function dtmfsignal = generateDTMF(fr,fc)
A = 1; % Amplitude
fs = 8000;%sampling rate
duration = 0.5;%duration
t = 0:1/fs:duration;%time vector from o to duration
dtmfsignal = A*cos(2*pi*fr*t) + A *cos(2*pi*fc*t);
end