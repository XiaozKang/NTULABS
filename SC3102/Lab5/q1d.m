% d)
% The value seen in cii surface is the value of the mathematical
% expression, but it is not the transfer function value as the transfer
% function does not converge at that z value. H(z) is only valid for those
% values that the sum coverges, which is when |z|>0.9 for this H(z)
% We can then see that as n increases when NOT in ROC the sum does not
% converge, thus H(z) calculated is not correct

close all;
clear all

% getting the output using direct computation
B = [1 0.8]; A = [1 -0.9];

% MUST use positive power of z, just like Laplace
% The surface of H(z) with b/w contours
sSurfaceForZT(B,A)

% Define z-values to test (inside and outside ROC)
z_inROC = 1.0;
z_outROC = 0.5;

% Calculate H(z) using closed form for z = 1.0 (inside ROC)
Hz_inROC = polyval(B, z_inROC) / polyval(A, z_inROC);

% Calculate H(z) using closed form for z = 0.5 (outside ROC)
Hz_outROC = polyval(B, z_outROC) / polyval(A, z_outROC);

% Calculate H(z) using partial sum (approximation of infinite series)
N = 100; % Number of terms for approximation
h_n = filter(B, A, [1 zeros(1, N-1)]); % Compute h(n) using impulse response

% Compute partial sums for z_inROC and z_outROC
partial_sum_inROC = sum(h_n .* (z_inROC .^ (-(0:N-1))));
partial_sum_outROC = sum(h_n .* (z_outROC .^ (-(0:N-1))));

% Display results
fprintf('H(z) (closed-form) at z=1.0 (inside ROC): %f\n', Hz_inROC);
fprintf('H(z) (partial sum) at z=1.0 (inside ROC): %f\n', partial_sum_inROC);
fprintf('H(z) (closed-form) at z=0.5 (outside ROC): %f\n', Hz_outROC);
fprintf('H(z) (partial sum) at z=0.5 (outside ROC): %f\n', partial_sum_outROC);

% Plot the impulse response and partial sum convergence
figure;
subplot(2,1,1);
stem(0:N-1, h_n .* (z_inROC .^ (-(0:N-1))), 'b', 'filled');
title('Partial Sum of H(z) at z=1.0 (inside ROC)');
xlabel('n');
ylabel('h(n) * z^{-n}');
grid on;

subplot(2,1,2);
stem(0:N-1, h_n .* (z_outROC .^ (-(0:N-1))), 'r', 'filled');
title('Partial Sum of H(z) at z=0.5 (outside ROC)');
xlabel('n');
ylabel('h(n) * z^{-n}');
grid on;