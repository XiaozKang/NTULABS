syms a b k t omega_0 phi s

% Calculations
H_S3 = (k*s) / ((s + a) * (s - b))
h_t3 = ilaplace(H_S3)

% Plotting
a = 0.1, b = 0.2, k = 3, omega_0 = 2, phi = 0.1*pi, t = 0:0.1:100;
y_t3 = (a*k*exp(-a*t))/(a + b) + (b*k*exp(b*t))/(a + b);

figure;
plot(t, y_t3); title('Plot of y_{t2}'); grid on;
annotation('textbox', [0.3, 0.7, 0.8, 0.1], 'String', ['$H_2(S):' latex(H_S3) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');


% Initial Value Theorem (IVT)
h0_S3 = limit(s * H_S3, s, inf); % h(0) using IVT
disp(['Initial values (h(0)): h_t3: ', char(h0_S3)]);

% Final Value Theorem (FVT)
hInf_S3 = limit(s * H_S3, s, 0); % h(+inf) using FVT
disp(['Final values (h(+inf)): h_t3: ', char(hInf_S3)])

% Define transfer function for numeric evaluation
% Transfer function (k*s) / ((s + a) * (s - b)), where 'a' is the pole at -a

% Correct poles and zero calculation
p = [-a, b];  % Poles at -a and b
z = 0;        % Zero at s = 0

% Plot using the splane function
splane(z, p);