% This function calculates H(j*Omega), assumes B,A are rational function in
% +ve power of z
% Author: Chng Eng Siong
% Date: Aug 2022

function [UnitcircleRange, HzVal] = H_OmegaForZT(B,A)
WRange = 0:0.01:2*pi;
j=sqrt(-1);
UnitcircleRange = exp(-j*WRange);
HzVal = polyval(B,UnitcircleRange)./polyval(A,UnitcircleRange); 

% Note: vertical axis in dB (log scale) so zeros go to -Inf
figure
plot(WRange./pi, abs(HzVal))
title('|H(Omega)| (magnitude)');
xlabel('omega (*pi)')
ylabel('|H(Omega)| (magnitude)')
hold on

figure
plot(WRange./pi, 10*log10(abs(HzVal).^2))
title('20*log_{10}|H(Omega)| (magnitude in dB)');
xlabel('omega (*pi)')
ylabel('20*log_{10}|H(Omega)| (magnitude)')
hold on

