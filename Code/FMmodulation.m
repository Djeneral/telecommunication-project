function [u_fm] = FMmodulation(x)
    U0 = 1;
    f0 = 64000; %treba 64000
    kFm = 10000/(4*pi);
    time = 0.128;
    Nsample = 65536;
    Fs = 256000;
    
    Um = max(x);
    w0 = 2*pi*f0;
    df0 = Um*kFm;
    dt = 1/Fs;
    
    t = linspace(0,time,Nsample);
    m = x/Um;
    
    u_fm = zeros(Nsample,1);
    
    for i=1:Nsample
        u_fm(i) = U0*cos(w0*t(i)+2*pi*df0*discrete_int(m,i,dt));
    end;
end

