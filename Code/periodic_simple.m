function [x] = periodic_simple()    
    A0 = 1;
    f0 = 1000;

    t = linspace(0,0.128,65536);
    x = A0*cos(2*pi*f0*t);
end

