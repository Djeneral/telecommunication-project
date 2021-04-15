x = aperiodic();

x5_noise= awgn(x,5);
x8_noise = awgn(x,8);
x11_noise = awgn(x,11);
x14_noise = awgn(x,14);
x17_noise = awgn(x,17);
x20_noise = awgn(x,20);
x23_noise = awgn(x,23);
x26_noise = awgn(x,26);

x_mod = FMmodulation(x);
x5_mod = FMmodulation(x5_noise);
x8_mod = FMmodulation(x8_noise);
x11_mod = FMmodulation(x11_noise);
x14_mod = FMmodulation(x14_noise);
x17_mod = FMmodulation(x17_noise);
x20_mod = FMmodulation(x20_noise);
x23_mod = FMmodulation(x23_noise);
x26_mod = FMmodulation(x26_noise);

x_demod = FMdemodulation(x_mod);
x5_demod = FMdemodulation(x5_mod);
x8_demod = FMdemodulation(x8_mod);
x11_demod = FMdemodulation(x11_mod);
x14_demod = FMdemodulation(x14_mod);
x17_demod = FMdemodulation(x17_mod);
x20_demod = FMdemodulation(x20_mod);
x23_demod = FMdemodulation(x23_mod);
x26_demod = FMdemodulation(x26_mod);

SNR5 = snr(x_demod,x_demod - x5_demod);
SNR8 = snr(x_demod,x_demod - x8_demod);
SNR11 = snr(x_demod,x_demod - x11_demod);
SNR14 = snr(x_demod,x_demod - x14_demod);
SNR17 = snr(x_demod,x_demod - x17_demod);
SNR20 = snr(x_demod,x_demod - x20_demod);
SNR23 = snr(x_demod,x_demod - x23_demod);
SNR26 = snr(x_demod,x_demod - x26_demod);

outSNR = [SNR5 SNR8 SNR11 SNR14 SNR17 SNR20 SNR23 SNR26];
inSNR = 5:3:26;
stem(inSNR, outSNR); %16 1,5
xlim([4 27]);
title('Grafik zavisnosti SNRa na izlazu iz demodulatora od SNRa na izlasku iz modulatora');
xlabel('SNR signala na izlazu iz modulatora[dB]');
ylabel('SNR signala na izlazu iz demodulatora [dB]');