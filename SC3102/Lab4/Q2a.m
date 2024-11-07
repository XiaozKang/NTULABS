close all 
clear all;
B = [1 1];
A = [1 0.1];
sSurface(B,A); 
H_Omega(B,A);

% % Parameters
% a = 0.1;           % Given constant
% s_real = linspace(-3, 3, 400); % Real part of s
% s_imag = linspace(-3, 3, 400); % Imaginary part of s
% [S_real, S_imag] = meshgrid(s_real, s_imag); % Create a grid
% S = S_real + 1i * S_imag; % Complex s
% 
% % H(s)
% H_s = (S + 1) ./ (S + a); % Compute H(s)
% 
% % Frequency response H(Ω)
% omega = linspace(-10, 10, 400); % Range for omega
% H_omega = (1i * omega + 1) ./ (1i * omega + a); % Compute H(Ω)
% 
% % Plot H(s)
% figure;
% subplot(1, 2, 1);
% surf(S_real, S_imag, abs(H_s));
% shading interp;
% colorbar;
% title('Magnitude of H(s)');
% xlabel('Real Part of s');
% ylabel('Imaginary Part of s');
% zlabel('|H(s)|');
% 
% % Plot phase of H(s)
% subplot(1, 2, 2);
% surf(S_real, S_imag, angle(H_s));
% shading interp;
% colorbar;
% title('Phase of H(s)');
% xlabel('Real Part of s');
% ylabel('Imaginary Part of s');
% zlabel('∠H(s)');
% 
% % Create figure for H(Ω)
% figure;
% subplot(1, 2, 1);
% plot(omega, abs(H_omega));
% title('Magnitude of H(Ω)');
% xlabel('Frequency (Ω)');
% ylabel('|H(Ω)|');
% grid on;
% 
% subplot(1, 2, 2);
% plot(omega, angle(H_omega));
% title('Phase of H(Ω)');
% xlabel('Frequency (Ω)');
% ylabel('∠H(Ω)');
% grid on;

