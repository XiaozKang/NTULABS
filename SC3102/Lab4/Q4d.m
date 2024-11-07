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
s1 = -R/(2*L) + sqrt((R/(2*L))^2 - 1/(L*C)); % Roots of the denominator
s2 = -R/(2*L) - sqrt((R/(2*L))^2 - 1/(L*C));

% Coefficients for the response
A = (y_0 - (10/(1/(L*C)))) / (s1 - s2);
B = (10/(1/(L*C))) / (s1 - s2);

% Compute the full response
y_h = A * exp(s1 * t_vector) + B * exp(s2 * t_vector);
y_p = 10 * (1 - exp(-t_vector/(R*C))); % Final value due to the step input 
y = y_h + y_p;

% Determine the time when y(t) reaches 9.9
final_value = 10;
target_value = 0.99 * final_value;
convergence_time = find(y >= target_value, 1) * 0.01;  % Get the first time point above 9.9

% Plotting the response
figure;
plot(t_vector, y, 'b', 'DisplayName', 'y(t) for R=1, x(t)=10u(t)');
hold on;
yline(target_value, 'r--', 'Target Value (9.9)', 'LabelHorizontalAlignment', 'left');
xlabel('Time (s)');
ylabel('Response y(t)');
title('Response of RLC Circuit with Step Input x(t) = 10u(t)');
grid on;
legend show;  % Show legend

% Display the time it takes to converge to 99% of the final value
fprintf('Time to converge to 99%% of final value (9.9V): %.2f seconds\n', convergence_time);
