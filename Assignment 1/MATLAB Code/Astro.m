%% Clear data, terminal, and figures before continuing
close all;
clear;
clc;

%% Data collection variables:
L_Star = {};    % Array of luminosities of all the stars, in L_o
M_Star = {};    % Array of masses of all the stars, in m_o

%% Filename for the 0.5 solar mass star's model:
halfMassStar = "HalfSolarMassZAMSmodel_upload.csv";
% Manual data entry for the remaining stuff:
M = 0.5;        % in Solar Masses
L = 0.02;       % in Solar Luminosity
R = 0.90178;    % in Solar Radii
Teff = 2287.7;  % in Kelvins
X = 0.7;        % Hydrogen fraction
Z = 0.008;      % Metal Fraction

L_Star = [L_Star L];    % Updating luminosity array with this star's value
M_Star = [M_Star M];    % Updating mass array with this star's value

PlotStar(halfMassStar, M, L, R, X, Z, 2, 1, 1);

%% Filename for the 1 solar mass star's model:
unitMassStar = "UnitSolarMassZAMSmodel_upload.csv";
% Manual data entry for the remaining stuff:
M = 1;        % in Solar Masses
L = 0.859;       % in Solar Luminosity
R = 1.05991;    % in Solar Radii
Teff = 5402;  % in Kelvins
X = 0.7;        % Hydrogen fraction
Z = 0.008;      % Metal Fraction

L_Star = [L_Star L];    % Updating luminosity array with this star's value
M_Star = [M_Star M];    % Updating mass array with this star's value

PlotStar(unitMassStar, M, L, R, X, Z, 0, 1, 1);

%% Filename for the 1.5 solar mass star's model:
a3_by_2MassStar = "OnePlusHalfZAMSmodel_upload.csv";
% Manual data entry for the remaining stuff:
M = 1.5;        % in Solar Masses
L = 9.1;       % in Solar Luminosity
R = 1.34714;    % in Solar Radii
Teff = 8644.6;  % in Kelvins
X = 0.7;        % Hydrogen fraction
Z = 0.008;      % Metal Fraction

L_Star = [L_Star L];    % Updating luminosity array with this star's value
M_Star = [M_Star M];    % Updating mass array with this star's value

PlotStar(a3_by_2MassStar, M, L, R, X, Z, 2, 1, 1);

%% Filename for the 2 solar mass star's model,
% which is based off of Sirius A:
SiriusAMassStar = "SiriusAZAMSmodel_upload.csv";
% Manual data entry for the remaining stuff:
M = 2.063;        % in Solar Masses
L = 25.4;       % in Solar Luminosity
R = 1.70226;    % in Solar Radii
Teff = 9940;  % in Kelvins
X = 0.7;        % Hydrogen fraction
Z = 0.008;      % Metal Fraction

L_Star = [L_Star L];    % Updating luminosity array with this star's value
M_Star = [M_Star M];    % Updating mass array with this star's value

PlotStar(SiriusAMassStar, M, L, R, X, Z, 1, 1, 1);

%% Filename for the 2.5 solar mass star's model,
% which is based off of Alpha Coronae Borealis A:
CoronaeMassStar = "AlphaCoronaeBorealisZAMSmodel_upload.csv";
% Manual data entry for the remaining stuff:
M = 2.58;        % in Solar Masses
L = 74;       % in Solar Luminosity
R = 3.05109;    % in Solar Radii
Teff = 9700;  % in Kelvins
X = 0.7;        % Hydrogen fraction
Z = 0.008;      % Metal Fraction

L_Star = [L_Star L];    % Updating luminosity array with this star's value
M_Star = [M_Star M];    % Updating mass array with this star's value

PlotStar(CoronaeMassStar, M, L, R, X, Z, 2, 1, 1);

%% Part e solution:
LuminosityComparison(cell2mat(L_Star), cell2mat(M_Star));