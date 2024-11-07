close all; clear all;

% Circuit parameters
L = 1;         % Inductance
C = (1/6);     % Capacitance

% Initial values
i_0 = 2;       % Initial current = 2A
y_0 = 1.5;     % Initial voltage across capacitor = 1.5V
d_y_0 = i_0 / C;  % Derivative of voltage across capacitor

% Resistance values
R_values = 1:5;  % Array of resistance values from 1 to 5
colors = ['b', 'g', 'r', 'c', 'm']; % Colors for the plots

% Create a new figure
figure; 

% Loop over each resistance value to calculate and plot response
for idx = 1:length(R_values)
    R = R_values(idx);  % Current resistance value
    B = [y_0 (R/L)*y_0 + d_y_0]; 
    A = [1 R/L (1/(L*C))];

    % Calculate residues, poles, and direct term
    [r, p, k] = residue(B, A);

    % Time vector
    t = 0:0.01:10;

    % Compute the response
    y = r(1) * exp(p(1) .* t) + r(2) * exp(p(2) .* t);

    % Plotting
    plot(t, y, colors(idx), 'DisplayName', ['R = ' num2str(R)]); 
    hold on;  % Keep the current plot
end

% Add labels and grid
xlabel('Time (s)');
ylabel('Response (y)');
title('RLC Circuit Response for Different Resistance Values');
legend show;  % Show legend
grid on;      % Add grid

% Overall, lowering the resistance from 5 ohms to 1 ohm leads to a significant change 
% in the transient response, with more pronounced oscillations, faster rise times, 
% and potentially higher steady-state values. The circuit becomes less damped, 
% making it more reactive to changes and able to store and release energy more efficiently. 
% This behavior is critical in applications where fast response times and controlled 
% oscillations are desired, such as in signal processing or control systems.