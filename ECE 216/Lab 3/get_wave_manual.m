function [ X ] = get_wave( note1,note2,note3, oct1, oct2, oct3, duration, fs )
%get_wave gets the time signal of a note
%   Given the name of a note ('Ab', 'F', 'Bs', etc.), an octave ('h', 'm', 'l'),
%   a duration in seconds, and a sampling frequency
%   (fs) in Hertz, get_wave produces a vector of evenly spaced samples of that note
%   played for that duration, sampled every 1/fs seconds

num = get_num(note1, oct1); %get the number of the desired note using the function get_num
f = get_freq(num); %get frequency f, using num
T = get_times(duration,fs);
X = cos(2*pi*f*T - pi/2);
%soundsc(X);
num = get_num(note2, oct2); %get the number of the desired note using the function get_num
f = get_freq(num); %get frequency f, using num
T = get_times(duration,fs);
Y = cos(2*pi*f*T - pi/2);

num = get_num(note2, oct3); %get the number of the desired note using the function get_num
f = get_freq(num); %get frequency f, using num
T = get_times(duration,fs);
Z = cos(2*pi*f*T - pi/2);

A = X + Y + Z;
soundsc(A);
end

