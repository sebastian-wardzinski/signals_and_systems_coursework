%%
T = 0.5;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : T;
Fn = 500;
y = sin(Fn*2*pi*t);
plot(t,y);
axis([0 3*48/48000 -1 1])
sound(y, Fs);
