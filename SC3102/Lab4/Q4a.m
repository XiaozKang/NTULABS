close all; clear all;

% See Tutorial Q4B, Q4A
%R = 5;  % R = 5, from tutorial
R = 1;   % R = 1, from lab
L = 1;
C = (1/6);

% Initial values
i_0 = 2;        % Initial current = 2A
y_0 = 1.5;      % Initial voltage across capacitor = 1.5V
d_y_0 = i_0/C;  % Derivative of voltage across capacitor

B = [y_0 (R/L)*y_0+d_y_0] 
A = [1 R/L (1/(L*C))];
% Using R = 5
%Y(s) = (1.5s+13.5)/(s^2+s+6)

[r,p,k] = residue(B,A)
% from the above, we can form y equation below
t=0:0.01:10;
y = r(1)*exp(p(1).*t)+r(2)*exp(p(2).*t);
figure;
plot(t,y); grid on;