x = aperiodic();
g = 10000;

x5 = awgn(x,5);
x8 = awgn(x,8);
x11 = awgn(x,11);
x14 = awgn(x,14);
x17 = awgn(x,17);
x20 = awgn(x,20);
x23 = awgn(x,23);
x26 = awgn(x,26);

x = FMmodulation(x);
x5 = FMmodulation(x5);
x8 = FMmodulation(x8);
x11 = FMmodulation(x11);
x14 = FMmodulation(x14);
x17 = FMmodulation(x17);
x20 = FMmodulation(x20);
x23 = FMmodulation(x23);
x26 = FMmodulation(x26);

time = linspace(0,0.128,65536);

x = FMdemodulation(x);
x5 = FMdemodulation(x5);
x8 = FMdemodulation(x8);
x11 = FMdemodulation(x11);
x14 = FMdemodulation(x14);
x17 = FMdemodulation(x17);
x20 = FMdemodulation(x20);
x23 = FMdemodulation(x23);
x26 = FMdemodulation(x26);

k = g;

% subplot(3,3,1)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x(51:k))
% title('Originalni signal')
% 
% subplot(3,3,2)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x5(51:k))
% title('SNR = 5dB')
% 
% subplot(3,3,3)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x8(51:k))
% title('SNR = 8dB')
% 
% subplot(3,3,4)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x11(51:k))
% title('SNR = 11dB')
% 
% subplot(3,3,5)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x14(51:k))
% title('SNR = 14dB')
% 
% subplot(3,3,6)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x17(51:k))
% title('SNR = 17dB')
% 
% subplot(3,3,7)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x20(51:k))
% title('SNR = 20dB')
% 
% subplot(3,3,8)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x23(51:k))
% title('SNR = 23dB')
% 
% subplot(3,3,9)
% t = linspace(0,0.128,65536);
% plot(t(51:k),x26(51:k))
% title('SNR = 26dB')

subplot(3,3,1)
fftPlot(SGSS(x),"sgss",-1*g, g);
title('Originalni signal')

subplot(3,3,2)
fftPlot(SGSS(x5),"sgss",-1*g, g);
title('SNR = 5dB')

subplot(3,3,3)
fftPlot(SGSS(x8),"sgss",-1*g, g);
title('SNR = 8dB')

subplot(3,3,4)
fftPlot(SGSS(x11),"sgss",-1*g, g);
title('SNR = 11dB')

subplot(3,3,5)
fftPlot(SGSS(x14),"sgss",-1*g, g);
title('SNR = 14dB')

subplot(3,3,6)
fftPlot(SGSS(x17),"sgss",-1*g, g);
title('SNR = 17dB')

subplot(3,3,7)
fftPlot(SGSS(x20),"sgss",-1*g, g);
title('SNR = 20dB')

subplot(3,3,8)
fftPlot(SGSS(x23),"sgss",-1*g, g);
title('SNR = 23dB')

subplot(3,3,9)
fftPlot(SGSS(x26),"sgss",-1*g, g);
title('SNR = 26dB')