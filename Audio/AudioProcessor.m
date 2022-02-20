clear all; close all; clc;
PDM = importdata("Audio.txt");
Hz = 32000;

Length = length(PDM);
Time = Length/Hz;

player = audioplayer(PDM, Hz)