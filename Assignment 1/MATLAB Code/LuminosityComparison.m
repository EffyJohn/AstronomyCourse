function LuminosityComparison(L_Star, M_Star)
    figure;
    plot(M_Star, L_Star);
    ylabel('Luminosity (L_o)');
    xlabel('Mass (M_o)');
    legend('y = L_o(M_o)', 'Location', 'northwest');
    title('Luminosity vs. Mass for five ZAMS models.');
    
    figure;
    bestfit = polyfit(log10(M_Star), log10(L_Star), 1);
    plot(log10(M_Star), log10(L_Star), log10(M_Star), polyval(bestfit, log10(M_Star)));
    ylabel('log_{10}(Luminosity (L_o))');
    xlabel('log_{10}(Mass (M_o))');
    legend({'y = Log_{10}(L_o(Log_{10}(M_o)))', [': Line of Best fit, with slope alpha = ' num2str(bestfit(1))]}, 'Location', 'northwest');
    title('Log_{10} of Luminosity vs. Log_{10} of Mass for five ZAMS models.');
end