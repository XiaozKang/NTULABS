% Solve for a such that H(0.1) = 5
syms a
H_target = 5;

% Define H(0.1)
H_0_1 = (1j*0.1 + 1) / (1j*0.1 + a);

% Solve the equation H(0.1) = 5
solution = solve(H_0_1 == H_target, a);

% Display the value of a
disp('Value of a such that H(Ω = 0.1) = 5.0:');
disp(double(solution));
