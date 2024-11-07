close all;
clear all;

% Define filter coefficients
B = [1 0.8];
A = [1 -0.9];
N = 100; % Number of samples
n = 0:N-1;

% Define omega values from 0 to pi in increments of 0.2*pi
omega_values = 0.2*pi:0.2*pi:pi;

% Colors for plotting each omega
colors = lines(length(omega_values)); % Generates a colormap with enough colors

% Initialize figure for comparison
figure; hold on;

% Iterate over each omega value
for i = 1:length(omega_values)
    omega = omega_values(i);

    % Calculate system response for each omega
    [ret_n, ret_x, ret_y, stepK] = my_diffEq_cosineW(omega, N, B, A); % Full response with transients
    
    % Plot the output y[n] for each omega using a different color
    plot(ret_n, ret_y, 'Color', colors(i,:), 'DisplayName', sprintf('y[n] for \\omega = %.2f\\pi', omega/pi));
    
    % Calculate theoretical |H(j*omega)| response
    H_jOmega = polyval(B, exp(1j * omega)) / polyval(A, exp(1j * omega));
    steady_state_amplitude = abs(H_jOmega) * cos(omega * n); % steady-state output
    
    % Plot theoretical steady-state amplitude
    plot(n, steady_state_amplitude, '--', 'Color', colors(i,:), 'HandleVisibility', 'off'); % Dashed line for theory
end

% Plot properties and labels
grid on;
title('System response y[n] vs |H(j\\Omega)| for varying \omega values');
xlabel('n (samples)');
ylabel('Amplitude');
legend('show'); % Display legend to distinguish between different omega values

% We can see that they are the same but phase shifted