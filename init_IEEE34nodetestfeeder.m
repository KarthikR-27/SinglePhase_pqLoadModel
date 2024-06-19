clear all;
clc;

Ts = 50e-6;
Pbase = 500e3;
Vbase = 24.9e3/sqrt(3);

%IEEE 34 Node Test Feeder

Ssub = 2500e3;
VsubH = 69e3;
VsubL = 24.9e3;
vNomMV = VsubL;
VxfmH = 24.9e3;
VxfmL = 4.16e3;
f=60;
fNom=f;
loadcoeff = 1.0;

%Setup Line Specs in mile
%Line 300 

R300 = [1.3368 0.2101 0.2130; 0.2101 1.3238 0.2066; 0.2130 0.2066 1.3294];
X300 = [1.3343 0.5779 0.5015; 0.5779 1.3569 0.4591; 0.5015 0.4591 1.3471];
BAg300 = (5.3350-1.5313-0.9943)*1e-6;
BBg300 = (5.0979-1.5313-0.6212)*1e-6;
BCg300 = (4.8880-0.9943-0.6212)*1e-6;

%Line 301 per km
R301 = [1.9300 0.2327 0.2359; 0.2327 1.9157 0.2288; 0.2359 0.2288 1.9219];
X301 = [1.4115 0.6442 0.5691; 0.6442 1.4281 0.5238; 0.5691 0.5238 1.4209];
BAg301 = (5.1207-1.4364-0.9402)*1e-6;
BBg301 = (4.9055-1.4364-0.5915)*1e-6;
BCg301 = (4.7154-0.9402-0.5951)*1e-6;

%Line 302 per km
R302A = 0.4794/1.60934;
L302A = (0.1314/(2*pi()*f))/1.60934;
C302A = (1/(714900*2*pi()*f))/1.60934;

%Line 303 per km

R303B = 0.4794/1.60934;
L303B = (0.1314/(2*pi()*f))/1.60934;
C303B = (1/(714900*2*pi()*f))/1.60934;

%Line 304 per km
R304B = 0.3080/1.60934;
L304B = (0.1235/(2*pi()*f))/1.60934;
C304B = (1/(678500*2*pi()*f))/1.60934;

% Questi parametri vanno bene per quello con frequenza
% kp_p=0.00619736958790118;
% ki_p=8.02213081235203;
%PI_values = [0.0001 10 0.0001 10];
% PI_values = [15*3 100*25];
% PI_values = [25*3 100*60];
PI_values = [25 100*60];
% kp_p=0.01;
% ki_p=10;
% 
% kp_q=kp_p*1;
% ki_q=ki_p*1;
% Up_p=1000;
% Low_p=1000;
% Up_q=Up_p;
% Low_q=Low_p;
Kpf = 0.5;
Kqf = -0.5;

%% Butterworth filter
fs=1/Ts;
fcut=25; %Hz
Wcut=fcut/fs;
[n,d]=butter(3,Wcut);

RateLimit=1e12;

%Filter for PI
Tf=0;

%% Frequency Dependency
Kpqf = [0 -0];


