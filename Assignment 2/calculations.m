%% Clear workspace
clc; 
clear;
close all;

sec2yr = (60*60*24*365);

%% Question 13.1:

ages = [0 92.9357 94.4591 94.5735 94.9218 95.2108 99.3835 100.888 107.208 108.454];
gaps = [0 0 0 0 0 0 0 0 0];

for i = 1:9
    gaps(i) = ages(i+1) - ages(i);
end
gaps
percents = (gaps/gaps(1))*100

%% Question 13.2:

G = 6.67408 * 10^-11;
M_o = 1.98847 * 10^30;
L_o = 3.828 * 10^26;
R_o = 696340000;

t_kh = (3*(G)*(5*M_o)^2)/(10*((10^3.1)*L_o)*(17*R_o))
t_kh = t_kh/sec2yr

t_act = 0.3483*10^6;

t_act/t_kh

%% Question 13.8:

d = 16;             % arcminutes
d = d/60;           % degrees
d = d * (pi/180)    % radians

d = d * (213)       % diameter in parsecs

age = (0.99 * 3.086 * 10^16)/(2*20*1000);    % age in seconds
age = age/sec2yr

%% Question 13.13:

V = 19;
M_V = 3.5;

d = 10^((V + 5 - M_V)/5)