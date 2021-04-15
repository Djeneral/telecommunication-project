function [] = timePlot(x, t)
    time = linspace(0,t,round(t/0.128*65536));
    %figure,
    plot(time ,x(1:round(t/0.128*65536)) , 'LineWidth', 1.6);
    title('Vremenski oblik signala', 'FontSize', 18);
    xlabel('Vreme [s]', 'FontSize', 18);
    ylabel('Amplituda', 'FontSize', 18);
end

