function [fm_demodulate] = FMdemodulation(u_fm)
N = 65536;
time = linspace(0,0.128,65536);
f0 = 1000;

x_cos = 2* u_fm.*(cos(2*pi*f0*time)');
x_sin = 2* u_fm.*(sin(2*pi*f0*time)');

N_order = 50;
my_filter = fir1(N_order, 0.20, 'low');

I = filter(my_filter,1,x_cos);
Q = filter(my_filter,1,x_sin);

complex_anvelope = I+i.*Q;

delay_complex_anvelope = zeros(N,1);
delay_complex_anvelope(2:N) = complex_anvelope(1:N-1);
conjug_complex_anvelope = conj(complex_anvelope);

demodulate_comlex_anvelope = delay_complex_anvelope.*conjug_complex_anvelope;

fm_demodulate = angle(demodulate_comlex_anvelope);
end

