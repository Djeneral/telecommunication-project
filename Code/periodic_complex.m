function [x] = periodic_complex()
    A0 = 0.5; A1 = 0.25; A2 = 0.15; A3 = 0.1;
    f0 = 500; f1 = 1000; f2 = 1500; f3 = 2000;

    t = linspace(0,0.128,65536);
    x = A0*cos(2*pi*f0*t)+A1*cos(2*pi*f1*t)+A2*cos(2*pi*f2*t)+A3*cos(2*pi*f3*t);
end

