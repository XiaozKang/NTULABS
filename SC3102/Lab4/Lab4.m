syms a b k t w phi s z

% Calculations
xt = 3*cos(4*pi*t)*heaviside(t);
Xs = laplace(xt);

ht = exp(-2*t)*heaviside(t);
Hs = laplace(ht);

Ys = Hs*Xs
yt = ilaplace(Ys)

%ht = exp(-a*t)*cos(w*t+phi)*heaviside(t)
%Hs = laplace(ht)
%ht_verify = ilaplace(Hs)

%Multiplication eg (s+1)(s+2)(s^2+2)
% conv([1,1],conv([1,1],[1,0,2]))

%Partial Fraction eg A is numerator, B is demoniator, spacing as delimiter
%B=[3 0];A=[1 2 16*pi^2 32*pi^2];
%[r,p,k] = residue(A,B)

% Plotting
%a = 0.1; b = 0.1; k = 3; w = 2; phi = 0.1*pi; t = 0:0.1:100;
%yt = exp(-a*t).*cos(w*t+phi).*heaviside(t);
%figure;
%plot(t, yt); title('Plot of y(t)'); grid on;
%annotation('textbox', [0.3, 0.7, 0.8, 0.1], 'String', ['$H(s):' latex(Hs) '$'], 'Interpreter', 'latex', 'FontSize', 17, 'EdgeColor', 'none');

% Initial Value Theorem (IVT)
%h0_S1 = limit(s * Hs, s, inf); % h(0) using IVT
%disp(['Initial value (h(0)): ht: ', char(h0_S1)]);

% Final Value Theorem (FVT)
%hInf_S1 = limit(s * Hs, s, 0); % h(+inf) using FVT
%disp(['Final value (h(+infinity)): ht: ', char(hInf_S1)])

%t = 0:0.1:100;
%figure 
%fplot(yt,[0,10])

%Plotting the surface
B=[1,1];
A=[1,1.1];
%sSurface(B,A);
%H_Omega(B,A)
splane(A,B)  %For this functionn, have to provide the exact poles and zeros in the matrix of A and B