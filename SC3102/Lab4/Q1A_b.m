syms a b k t omega_0 phi s

% Calculations
h_t2 = exp(-a*t)*sin(omega_0*t+phi)*heaviside(t)
H_S2 = laplace(h_t2)

% Plotting
a = 0.1, b = 0.2, k = 3, omega_0 = 2, phi = 0.1*pi, t = 0:0.1:100;
y_t2 = exp(-a*t).*sin(omega_0*t+phi).*heaviside(t);

figure;
plot(t, y_t2); title('Plot of y_{t2}'); grid on;
annotation('textbox', [0.3, 0.7, 0.8, 0.1], 'String', ['$H_2(S):' latex(H_S2) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');

% Initial Value Theorem (IVT)
h0_S2 = limit(s * H_S2, s, inf); % h(0) using IVT
disp(['Initial values (h(0)): h_t2: ', char(h0_S2)]);

% Final Value Theorem (FVT)
hInf_S2 = limit(s * H_S2, s, 0); % h(+inf) using FVT
disp(['Final values (h(+inf)): h_t2: ', char(hInf_S2)])

% Poles calculation (complex conjugates) 
% for H_S2 = (sin(phi)*(a + s))/((a + s)^2 + omega_0^2) + (omega_0*cos(phi))/((a + s)^2 + omega_0^2)
p1 = -a + 1i * omega_0;  % First pole
p2 = -a - 1i * omega_0;  % Second pole
p = [p1, p2];            % Poles array

% Zero calculation
z = -a - (omega_0 * cos(phi)) / sin(phi);  % Single real zero

% Plot using the splane function
splane(z, p);