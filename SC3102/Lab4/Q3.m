close all 
clear all;
syms Omega t s;
B = [1 6];     % (s+6)
A = [1 5 6];  % (s^2 + 5s + 6)

% Q3a
% From the pole/zero plot, the poles are ALL on the LHS, hence 
% the system is stable.
% The pole nearest to the jW axis is at -2
sSurface(B,A); 

% Q3b) Plot the impulse response
[r,p,k] = residue(B,A);  
% We get r = [-3, 4], p = [-3, -2], k = [] for this question
% Performing the inverse Laplace transform
t = 0:0.01:3; % Time vector
h = -3*exp(-3*t) + 4*exp(-2*t); % Impulse response

figure;
plot(t, h, 'g'); 
grid on;
hold on;

% Initialize parameters for Omega values
Omega_values = 0:3; % Omega range from 0 to 3
gain = zeros(size(Omega_values));
phase_shift = zeros(size(Omega_values));

% Prepare a new figure for system responses
figure;

% Loop over each Omega value
for i = 1:length(Omega_values)
    Omega_val = Omega_values(i);
    
    % Driven by the input x(t) = cos(Ωt)u(t)
    x_t = cos(Omega_val*t) .* heaviside(t); % Numeric input x(t)

    % Convolve the impulse response with the input signal
    y_t = conv(h, x_t, 'same') * (t(2) - t(1)); % Include sampling period for correct scaling

    % Create a new time vector for the output
    t_conv = t; % Keep the same time vector for y(t)

    % Plot the system response y(t)
    subplot(length(Omega_values), 1, i);
    plot(t_conv, y_t, 'b'); 
    title(['System Response y(t) for \Omega = ' num2str(Omega_val)]); 
    xlabel('Time (s)');
    ylabel('y(t)');
    grid on;
    
    % Evaluate H(jOmega) for gain and phase shift
    H_eval = subs(poly2sym(B, s) / poly2sym(A, s), s, 1j * Omega_val); % H(jΩ)
    gain(i) = abs(H_eval);                      % Magnitude
    phase_shift(i) = angle(H_eval) * (180/pi); % Phase shift in degrees
end

% Display results in a table
results = table(Omega_values', gain', phase_shift', ...
    'VariableNames', {'Omega', 'Gain', 'PhaseShift'})

% Plot Gain and Phase Shift
figure;
subplot(2, 1, 1);
bar(Omega_values, gain, 'FaceColor', 'g');
title('Gain vs Frequency \Omega');
xlabel('Frequency \Omega');
ylabel('Gain');
grid on;

subplot(2, 1, 2);
bar(Omega_values, phase_shift, 'FaceColor', 'b');
title('Phase Shift vs Frequency \Omega');
xlabel('Frequency \Omega');
ylabel('Phase Shift (degrees)');
grid on;

