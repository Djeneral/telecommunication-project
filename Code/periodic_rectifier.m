function [x] = periodic_rectifier()
    A0 = 1;
    f0 = 1000;

    t = linspace(0,0.128,65536);
    x = abs(A0*cos(2*pi*f0*t));
end

