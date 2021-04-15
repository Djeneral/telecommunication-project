function [y] = SGSS(x)
    N_fft = 2048;
    Fs = 256000;
    
    z = zeros(N_fft,32);
    for i=1:32
        x_p = x((i-1)*N_fft+1:i*N_fft);
        z(:,i) = (1/(Fs*N_fft))*(fft(x_p, N_fft).^2);
    end;
    
    y = mean(z');
end

