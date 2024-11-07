% Author: Chng Eng Siong
% Date: Aug 2022
% This is my function to generate the output for input ==
% cos(wn), for N samples, using H(jW)*x[n] <- where x[n] is the cosine
% BUT we know that when w is high, near pi, then its very difficult, so
% what we do it to generate cos(wn+theta), interpolating between them 
% so we get a smooth response, :) its very cool

function [ret_n, ret_x, ret_y, K] = my_H_jW_cosineW(w,N,B,A)
% we have to generate many version of x that is phase shifted.
% lets break a step into K steps
K = 100;
y_col = zeros(K,N);
ret_y = zeros(N*K,1);
ret_x = zeros(N*K,1);
ret_n = zeros(N*K,1);
j=sqrt(-1);
H_jW = polyval(B,exp(j*w))/polyval(A,exp(j*w));
magGain = abs(H_jW);
phaseShift=angle(H_jW);

for i=0:K-1
    n = (0:N-1)+i*1.0/K;
    x = cos(w.*n);
    for j=0:N-1
        ret_x((j*K)+1+i) = x(j+1);
    end   
    y_col(i+1,:) = magGain*cos(w.*n+phaseShift);
end
% generating for different phase shift for input

% we now have to pack it up in correct time
 for i=0:K-1
    for j=0:N-1
        ret_y((j*K)+1+i) = y_col(i+1,j+1);
        
        ret_n((j*K)+1+i) = j+((i*1.0)/K);
    end
 end
end % of my_diffEq_cosineW

