Fs = 256000;
N = 65536;
N_order = 50;

x = periodic_simple();     %Ulazni signal
x = awgn(x,26);             %Dodavanje suma odredjenog SNRa na signal
u_fm = FMmodulation(x);     %Modulisani signal

y = FMdemodulation(u_fm);

plot(y(N_order+1:N));