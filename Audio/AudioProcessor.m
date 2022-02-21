clear all; close all; clc;
analog = importdata("30Seconds_Portenta_1ft.txt");
% analog = importdata("Test_30s.txt");
% hz = 32000;
time = 30;
length = length(analog);
% time = Length/Hz;
fs = length/time;
converted = analog/10000;

original = audioplayer(converted, fs);
% y = lowpass(converted,4000,hz);
y = bandpass(converted,[20 700], fs);
% y = 4 .* y;

plot(converted);
hold on;
plot(y);

filtered = audioplayer(y, fs);
audiowrite("new_audio.wav",converted,fs);
audiowrite("filtered_audio.wav",y,fs);

% [x,Fs]=audioread("new_audio.wav");
% new=bandpass(x,[20 700],Fs);
% new=4 .* new;
% audiowrite("FilteredAudio.wav",new,Fs);