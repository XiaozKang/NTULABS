% difference equation
% y(n) = x(n)+0.8x(n-1) + 0.9y(n-1)
% x[n] = step function

close all;
clear all

% getting the output using direct computation
B = [1 0.8]; A = [1 -0.9];
% MUST use positive power of z, just like Laplace
% Q1c(ii) -> the surface of H(z) with b/w contours
sSurfaceForZT(B,A)
% Q1c(iii) -> the plot of freq vs magnitude (abs, log(dB)) 
[UnitcircleRange, HzVal] = H_OmegaForZT(B,A);
% figure;plot(angle(UnitcircleRange)./pi, abs(HzVal)); % if we want to use
% the return values from H_OmegaForZT(B,A)

% i) Stable as the pole is within the unit circle, thus the ROC will
% include the unit circle

% iii) As we trace the magnitude along the red unit circle with omega angle
% from 0 to 2pi, we see that it starts from the pole high, then decreases
% to the zero low, then up back again
% We are essentially tracing H(jΩ) along the unit circle in normal or dB
