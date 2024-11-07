close all;
clear all;

syms a t
h_t = exp(-2*t)*heaviside(t);
x_t = 3*cos(4*pi*t)*heaviside(t);
Hs = laplace(h_t)
Xs = laplace(x_t);
Ys = Hs * Xs;
y_t = ilaplace(Ys)

% Define numeric time vector
t_vals = 0:0.1:100; w = 1; endTime = 10;

% Create figure
figure; tvec = 0:(1/(100*w)):endTime;

% Calculate the transient response
transient_ip = - (3*exp(-2*tvec))/(8*pi^2 + 2);
plot(tvec, transient_ip, 'g-', 'DisplayName', 'Transient Response'); hold on;

% Convert symbolic expression to a function for numeric evaluation
y_t_func = matlabFunction(y_t, 'Vars', t);
yt_plot_laplace = y_t_func(tvec); % Evaluate the symbolic function at tvec
plot(tvec, yt_plot_laplace, 'r-', 'DisplayName', 'y(t)');

y_ss_func = matlabFunction((3*cos(4*pi*t) + 6*pi*sin(4*pi*t))/(8*pi^2 + 2), 'Vars', t);
yss_plot_laplace = y_ss_func(tvec);
plot(tvec, yss_plot_laplace, 'b-', 'DisplayName', 'y(t) steady state');

% Add annotation and grid
annotation('textbox', [0.3, 0.8, 0.8, 0.1], 'String', ['$y(t): ' latex(y_t) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');
grid on;

% Add legend
legend show;
