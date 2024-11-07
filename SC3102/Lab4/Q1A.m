% Q1
syms a b k t omega_0 phi s

% Calculations
h_t1 = exp(-a*t)*cos(omega_0*t+phi)*heaviside(t)
H_S1 = laplace(h_t1)

h_t2 = exp(-a*t)*sin(omega_0*t+phi)*heaviside(t)
H_S2 = laplace(h_t2)

H_S3 = (k*s) / ((s + a) * (s - b))
h_t3 = ilaplace(H_S3)

h_t4 = exp(a*t)*heaviside(t)
H_S4 = laplace(h_t4)

disp('LaTeX representation of H_S1:'); disp(latex(H_S1));  % Display the LaTeX representation
disp('LaTeX representation of H_S2:'); disp(latex(H_S2));  % Display the LaTeX representation
disp('LaTeX representation of h_t3:'); disp(latex(h_t3));  % Display the LaTeX representation
disp('LaTeX representation of H_S4:'); disp(latex(H_S4));  % Display the LaTeX representation

% Plotting
a = 0.1, b = 0.2, k = 3, omega_0 = 2, phi = 0.1*pi, t = 0:0.1:100;
y_t1 = exp(-a*t).*cos(omega_0*t+phi).*heaviside(t);
y_t2 = exp(-a*t).*sin(omega_0*t+phi).*heaviside(t);
y_t3 = (a*k*exp(-a*t))/(a + b) + (b*k*exp(b*t))/(a + b);
y_t4 = exp(a*t).*heaviside(t);

figure;
subplot(1, 4, 1); plot(t, y_t1); title('Plot of y_{t1}'); grid on; % 1 row, 3 columns, 1st plot
subplot(1, 4, 2); plot(t, y_t2); title('Plot of y_{t2}'); grid on; % 1 row, 3 columns, 2nd plot
subplot(1, 4, 3); plot(t, y_t3); title('Plot of y_{t3}'); grid on; % 1 row, 3 columns, 3rd plot
subplot(1, 4, 4); plot(t, y_t4); title('Plot of y_{t4}'); grid on; % 1 row, 3 columns, 4th plot

% Create a new figure for annotations
figure;
annotation('textbox', [0.2, 0.8, 0.8, 0.1], 'String', ['$' latex(H_S1) '$'], 'Interpreter', 'latex', 'FontSize', 14, 'EdgeColor', 'none');
annotation('textbox', [0.2, 0.6, 0.8, 0.1], 'String', ['$' latex(H_S2) '$'], 'Interpreter', 'latex', 'FontSize', 14, 'EdgeColor', 'none');
annotation('textbox', [0.2, 0.4, 0.8, 0.1], 'String', ['$' latex(h_t3) '$'], 'Interpreter', 'latex', 'FontSize', 14, 'EdgeColor', 'none');
annotation('textbox', [0.2, 0.2, 0.8, 0.1], 'String', ['$' latex(H_S4) '$'], 'Interpreter', 'latex', 'FontSize', 14, 'EdgeColor', 'none');
set(gcf, 'Position', [100, 100, 600, 400]);

% Find h(0) using the Initial Value Theorem
h0_S1 = limit(s * H_S1, s, inf);
h0_S2 = limit(s * H_S2, s, inf);
h0_S3 = limit(s * H_S3, s, inf);
h0_S4 = limit(s * H_S4, s, inf);

% Find h(+inf) using the Final Value Theorem
hInf_S1 = limit(s * H_S1, s, 0);
hInf_S2 = limit(s * H_S2, s, 0);
hInf_S3 = limit(s * H_S3, s, 0);
hInf_S4 = limit(s * H_S4, s, 0);

% Display results
disp('Initial values (h(0)):');
disp(['h_t1: ', char(h0_S1)]);
disp(['h_t2: ', char(h0_S2)]);
disp(['h_t3: ', char(h0_S3)]);
disp(['h_t4: ', char(h0_S4)]);

disp('Final values (h(+inf)):');
disp(['h_t1: ', char(hInf_S1)]);
disp(['h_t2: ', char(hInf_S2)]);
disp(['h_t3: ', char(hInf_S3)]);
disp(['h_t4: ', char(hInf_S4)]);