syms a b k t omega_0 phi s
assume(a > 0)

% Calculations
h_t4 = exp(a*t)*heaviside(t)
H_S4 = laplace(h_t4)

% Plotting
a = 0.1, b = 0.2, k = 3, omega_0 = 2, phi = 0.1*pi, t = 0:0.1:100;
y_t4 = exp(a*t).*heaviside(t);

figure;
plot(t, y_t4); title('Plot of y_{t4}'); grid on;
annotation('textbox', [0.3, 0.7, 0.8, 0.1], 'String', ['$h_4(t):' latex(h_t4) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');

% Initial Value Theorem (IVT)
h0_S4 = limit(s * H_S4, s, inf); % h(0) using IVT
disp(['Initial values (h(0)): h_t4: ', char(h0_S4)]);

% Final Value Theorem (FVT)
hInf_S4 = limit(s * H_S4, s, 0); % h(+inf) using FVT
disp(['Final values (h(+inf)): h_t4: ', char(hInf_S4)])

% Define transfer function for numeric evaluation
% Transfer function H(s) = -1/(a - s) found from H_S4

% Numerator (No zeros for this system)
B = [1];  % Constant numerator
% Denominator (Pole at s = -a)
A = [1 -a];  % (s - a)

% Plot the poles and zeros using splane()
splane(roots(B), roots(A));