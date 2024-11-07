close all;
clear all;

syms n z w a

omega = w*pi
N = 100; % Number of terms for approximation

%ones(m,n)/zeros(m,n) create a m by n matrix of 1's/0's
%Unit step ([1,1,1,1,1,1,...])
%x = ones(N,1);
%Delta function ([1,0,0,0,0])
%x1 = [1 zeros(1, N-1)];

xn = 1

%Just for better display
pretty(x)

% Z-Transform
xz = ztrans(xn,n,z)
x = iztrans(xz)

%A/B, USING A AS NUMERATOR AND B AS DENOMIATOR
A = [1 0.8];
B = [1 -0.9];

%To find the roots of polynomials either numerator or denomiator
roots(A)

%polyval() function is just to substitute the variable z with z_inROC
Hz_inROC = polyval(A, z_inROC) / polyval(B, z_inROC);
%Can apply the same way to compute frequence response by substituting z with e^jw
H_jOmega = polyval(A, exp(j * omega)) / polyval(B, exp(j * omega));

% Compute h(n) using impulse response 
h_n = filter(B, A, [1 zeros(1, N-1)]); 

%Frequency Response (substituting z with e^jw)
H_at_omega = (A(1) + A(2)*exp(-j * omega)) / (B(1) + B(2)*exp(-j * omega));
gain = abs(H_at_omega);  % Gain is the magnitude of H(j*omega)
phase_shift = angle(H_at_omega);  % Phase shift is the angle of H(j*omega)

%For computing Y(z)/z (Positive powers of z)
[r,p,k] = residue(A,B)  
%For computing negative powers of z
[r,p,k] = residuez(A,B) 

%For plotting poles and zeros using roots of numerator and denomiator of
%transfer function
zplane(roots(A),roots(B))

