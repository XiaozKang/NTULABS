close all; clear all;

% Circuit parameters
R = 1;         % Resistance (Ohm)
L = 1;         % Inductance (H)
C = 1/6;       % Capacitance (F)

% Initial conditions
i_0 = 0;       % Initial current (A)
y_0 = 0;       % Initial voltage across capacitor (V)
d_y_0 = i_0 / C;  % Derivative of voltage across capacitor

% Input function
x_t = @(t) 10 * (t >= 0);  % Step function x(t) = 10u(t)

% Time vector
t_vector = 0:0.01:10;

% Transfer function coefficients
num = [d_y_0];  % Numerator based on initial condition
den = [1 R/L (1/(L*C))]; % Denominator coefficients

% Calculate step response using step function
% Since the system is at rest initially, the step response can be derived directly.
% The response to the step input can be found by using the inverse Laplace transform
% and knowing the system's impulse response.

% Compute the homogeneous response y_h(t)
s1 = -R/(2*L) + sqrt((R/(2*L))^2 - 1/(L*C)); % Roots of the denominator
s2 = -R/(2*L) - sqrt((R/(2*L))^2 - 1/(L*C));

% Coefficients for the response
A = (y_0 - (10/(1/(L*C)))) / (s1 - s2);
B = (10/(1/(L*C))) / (s1 - s2);

% Compute the full response
y_h = A * exp(s1 * t_vector) + B * exp(s2 * t_vector);

% Particular response due to the step input
y_p = 10 * (1 - exp(-t_vector/(R*C))); % Final value due to the step input 

% Total response y(t) = homogeneous + particular response
y = y_h + y_p;

% Plotting the response
figure;
plot(t_vector, y, 'b', 'DisplayName', 'y(t) for R=1, x(t)=10u(t)');
xlabel('Time (s)');
ylabel('Response y(t)');
title('Response of RLC Circuit with Step Input x(t) = 10u(t)');
grid on;
legend show;  % Show legend
