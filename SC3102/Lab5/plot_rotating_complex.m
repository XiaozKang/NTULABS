% Author: Chng Eng Siong
% plotting z^-n
%
clear all; close all;
which_plot = 1  % for z^-1 choise == 1

A = 1.1; w = -0.25
z = A*exp(+j*w*pi)
step=100
n = 0:1/step:30;
if which_plot == 1
    y_n = z.^(-n);   % we are plotting z^(-n) !!!
    y_n_conj = conj(y_n);
else    
    y_n = z.^(n);   % we are plotting z^(n) !!!
    y_n_conj = conj(y_n);
end    

plot3(n,real(y_n),imag(y_n),'r-');grid on; hold on;
%plot3(n,real(y_n_conj),imag(y_n_conj),'g-');grid on; hold on;
plot3(n(1:step:length(n)),real(y_n(1:step:length(n))),...
        imag(y_n(1:step:length(n))),'ro');grid on; hold on;

straighLine_real = zeros(1,length(n));
straighLine_imag = zeros(1,length(n));
plot3(n,straighLine_real,straighLine_imag,'k');
xlabel('n(sample idx)');
ylabel('real(z)');
zlabel('imag(z)');
if which_plot == 1
    titleStr = sprintf('z^{-n} for z=%.2f*exp(j*%.3f*pi)',A,w)
    axis([0 30 -1.2 1.2 -1.2 1.2])
else
     titleStr = sprintf('z^{+n} for z=%.2f*exp(j*%.3f*pi)',A,w)
end
title(titleStr)
view([28 18])
