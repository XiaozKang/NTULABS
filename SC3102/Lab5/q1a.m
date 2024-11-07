% difference equation
% y(n) = x(n)+0.8x(n-1) + 0.9y(n-1)
% x[n] = step function

close all;
clear all

%Q1
% getting the output using direct computation
B = [1 0.8];
A = [1 -0.9];

%Q1a
% N = lets generate N samples
figure
N = 100; n=0:N-1;
x = ones(N,1);
y = my_diffEq(x,B,A); % my_diffEq is a custom function
stem(n,x,'b'); hold on;
stem(n,y,'r-');
grid on;
title('Lab 5- Q1a, y due to step input x');

% computing Y(z) by closed form
N_z = B;
D_z = conv(A,[1 -1]);  
% we convolve A with [1 -1], as [1 -1] is representing x[n] in X(z) domain
% x[n] = u[n], X(z) = z/(z-1), hence denominator is [1 -1]
% numerator (z) is moved to LHS for Y(z)/z use!

[r,p,k] = residue(N_z, D_z)  
% note we are computing Y(z)/z
n=0:N-1;
y_closed_form = (r(1)*(p(1).^n))+(r(2)*(p(2).^n));
% Note we didnt deal with the case of k~= [], or that there is NOT 2 pole,
% zeros, this is bcos this solution is only for this question~!
stem(n,y_closed_form,'gx');
% the results showed that the closed form is the same!!!
% Lab Q1a ends for x[n]=u[n]
y_closed_form2 = 18.*heaviside(n)-17.*(0.9).^n.*heaviside(n);
stem(n,y_closed_form2,'y-');

