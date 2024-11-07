syms a b k t w0 phi s

% Calculations
h_t1 = exp(-a*t)*cos(w0*t+phi)*heaviside(t)
H_S1 = laplace(h_t1)

% Plotting
a = 0.1, b = 0.2, k = 3, w0 = 2, phi = 0.1*pi, t = 0:0.1:100;
y_t1 = exp(-a*t).*cos(w0*t+phi).*heaviside(t);

figure;
plot(t, y_t1); title('Plot of y_{t1}'); grid on;
annotation('textbox', [0.3, 0.7, 0.8, 0.1], 'String', ['$H_1(S):' latex(H_S1) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');

% Initial Value Theorem (IVT)
h0_S1 = limit(s * H_S1, s, inf); % h(0) using IVT
disp(['Initial values (h(0)): h_t1: ', char(h0_S1)]);

% Final Value Theorem (FVT)
hInf_S1 = limit(s * H_S1, s, 0); % h(+inf) using FVT
disp(['Final values (h(+inf)): h_t1: ', char(hInf_S1)])

% Poles calculation (complex conjugates)
p1 = -a + 1i * omega_0;  % First pole
p2 = -a - 1i * omega_0;  % Second pole
p = [p1, p2];            % Poles array

% Zero calculation
z = -a + (omega_0 * sin(phi)) / cos(phi);  % Single real zero

% Plot using the splane function
splane(z, p);