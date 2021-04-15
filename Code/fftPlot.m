function [] = fftPlot(x,tip,f_a,f_b)
    Fs = 256000;
    
    if(tip == "fft")
        N = 65536;
                
        m1 = round(f_a/(Fs)*(N/2)+N/2 +1);
        m2 = round(f_b/(Fs)*(N/2)+N/2 +0);
        
        frekvencija = linspace(-Fs,Fs,N);
        %figure,
        spektar = fftshift(abs(fft(x))/(N/2));
        plot(frekvencija(m1:m2), spektar(m1:m2));
        title('Aplitudski spektar signala');
        xlabel('Frekvencija [Hz]');
        ylabel('Amplituda');
    end;
    if(tip == "sgss")
        N = 2048;
        
        m2 = round(f_b/(Fs/2)*(N/2)+N/2);
        m1 = round(f_a/(Fs/2)*(N/2)+N/2) + 1;
        x = fftshift(abs(x));
        
        frekvencija = linspace(-Fs,Fs,N);
        figure,
        plot(frekvencija(m1:m2), x(m1:m2), 'LineWidth', 1);
        title('Spektar gustine snage signala', 'FontSize', 10);
        xlabel('Frekvencija [Hz]', 'FontSize', 10);
        ylabel('Gustina snage signala', 'FontSize', 10);
    end;
end

