function [x] = aperiodic()
    N = 65536;
    h = zeros(1,N);
    h(N*7/16:N*9/16) = 1;
    x = periodic_complex();
    x = x.*h;
end

