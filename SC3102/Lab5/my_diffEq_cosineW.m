% Author Chng Eng Siong
% date: Aug 2022
% This is my function to generate the difference equation for input ==
% cos(wn), for N samples,
% BUT we know that when w is high, near pi, then its very difficult, so
% what we do it to generate cos(wn+theta), interpolating between them 
% so we get a smooth response, :) its very cool

function [ret_n, ret_x, ret_y, K] = my_diffEq_cosineW(w,N,B,A)
% we have to generate many version of x that is phase shifted.
% lets break a step into K steps
K = 100;
y_col = zeros(K,N);
ret_y = zeros(N*K,1);
ret_x = zeros(N*K,1);
ret_n = zeros(N*K,1);
for i=0:K-1
    n = (0:N-1)+i*1.0/K;
    x = cos(w.*n);
    for j=0:N-1
        ret_x((j*K)+1+i) = x(j+1);
    end   
    y_col(i+1,:) = my_diffEq(x,B,A);
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
