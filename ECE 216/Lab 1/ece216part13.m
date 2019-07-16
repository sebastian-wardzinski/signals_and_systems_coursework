fs = 44100;
bass = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');
length(guitar);

duration = 5;
t = linspace(1, 4, fs*duration);
b = bass(1:fs*duration);
g = guitar(1:fs*duration);
d = drums(1:fs*duration);

%sound(g, fs);
%sound(b, fs);
%sound(d, fs);

comp = b + 
3'.*g + d;
sound(comp,fs);

