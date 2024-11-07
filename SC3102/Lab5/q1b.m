% Lab5, Q1b (i,ii,iii), using x[n]=cos(0.1\pi n)
close all;
clear all
% getting the output using direct computation
B = [1 0.8];
A = [1 -0.9]
omega = 0.1*pi;
N = 100; n=0:N-1;
[ret_n,ret_x, ret_y, stepK] = my_diffEq_cosineW(omega,N,B,A); % computes the full response, including transients.
[ret_n,ret_x2, ret_y2, stepK] = my_H_jW_cosineW(omega,N,B,A); % computes only the steady-state response.

figure; hold on;
% Plots the sampled output y[n] at intervals stepK with red circles
plot(ret_n(1:stepK:length(ret_n)), ret_y(1:stepK:length(ret_n)),'ro')
% Plots the sampled input x[n] at intervals stepK with green circles
plot(ret_n(1:stepK:length(ret_n)), ret_x(1:stepK:length(ret_n)),'go')
% the continuous versions of x[n] and y[n] 
plot(ret_n,ret_x,'g'); hold on;
plot(ret_n,ret_y,'r'); hold on;

grid on;
opStr = sprintf('Lab5,Q1b (ii), y[n] for x[n]=cos(%.2f*pi n)u[n]',omega/pi)
title(opStr)
legend('sampled output y[n]','sampled input x[n]','continuous x[n]','continuous y[n]')

% i)
% Transient exist due to inertia of the system to the input, ending around
% 18 samples

% ii)
% Calculate the gain and phase shift at omega = 0.1*pi
H_at_omega = (B(1) + B(2)*exp(-j * omega)) / (A(1) + A(2)*exp(-j * omega));
gain = abs(H_at_omega);  % Gain is the magnitude of H(j*omega)
phase_shift = angle(H_at_omega);  % Phase shift is the angle of H(j*omega)

% Display the gain and phase shift
fprintf('Gain at omega = 0.1*pi: %.4f\n', gain);
fprintf('Phase shift at omega = 0.1*pi (in radians): %.4f\n', phase_shift);

% iii)
figure; hold on;
plot(ret_n,ret_y,'r'); hold on;  % the continuous version 
plot(ret_n,ret_y2,'b--'); hold on % the frequency response
opStr = sprintf('Lab5,Q1b(iii), steady state vs full solution (with transient)')
title(opStr)
legend('Full response (with transient)', 'Steady-state response only');
% the full response will show a transient build-up towards the steady-state, while the 
% y(n)=H(jΩ)x(n) response will exhibit the steady-state behavior from the start.


% Note we are plotting a smooth version of x[n]! 
% its not continuous. We should plot x[n], y[n] ONLY for integer n.
% But the above is for visualization ONLY.
% the results showed that the closed form is the same!!!
% Lab Q1b ends for x[n]=cos(0.1pi n)u[n]

