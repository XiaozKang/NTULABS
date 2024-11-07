
% This deals with single pole and single zero ONLY
% else will fail
function y = my_diffEq(x,B,A)
    if (length(B) ~=2 || length(A)~=2)
        print('my_diffEq MUST take only 2 parameters for B and A')
        die
    end

    x_d1 =0;  % relax situation
    y_d1 =0;
    for n=1:length(x)
        y(n) = B(1)*x(n) + B(2)*x_d1 - A(2)*y_d1;
        x_d1 = x(n);
        y_d1 = y(n);
    end  % of for n
end  % of function y

