function PlotStar(filename, M, L, R, X, Z, error_correction, x_limit, y_limit)
    % Calculate T_quantum for part b:

    Z1 = 1;
    Z2 = 1;
    e = 1.602 * 10^-19;
    reduced_mass_proton = (1.673 * 10^-27)/2;
    epsilon_0 = 8.854 * 10^-12;
    h = 6.626 * 10^-34;
    k = 1.381 * 10^-23;
    
    T_quantum = (((Z1*Z2)^2)*(e^4)*(reduced_mass_proton))/((12)*(k)*(pi*epsilon_0*h)^2);

    % This only recieves the tabulated data that I 
    % manually formatted to work as a CSV.
    StatStar = readmatrix(filename);
    StatStar = StatStar(1:end-error_correction,:);
    
    % Raw values output by the StatStar Code.
    r = StatStar(:,2);
    Lr = StatStar(:,5);
    T = StatStar(:,6);
    P = StatStar(:,7);
    Mr = 1 - StatStar(:,4);
    
    % Stellar parameters taken from the Astro course Formula sheet:
    L_0 = 3.84 * 10^26; % Solar Luminosity in SI Units
    R_0 = 6.96 * 10^8;  % Solar Radius in SI Units
    
    % Normalizing everything so that it gets easier to plot:
    norm_r = r / (R * R_0);
    norm_Lr = Lr / (L * L_0);
    norm_T = T / T(end);
    norm_P = P / P(end);
    norm_Mr = Mr;
    
    length = size(norm_Lr);
    
    i = 1;
    j = 1;
    while and(0.50 < norm_Lr(i), i < length(1))
        if (0.99 < norm_Lr(i))
            j = i+1;
        end
        i = i + 1;
    end
    
    i = i - 1;
    j = j - 1;
    
    figure;
    y_label = 'Normalized Quantities';
    plot(norm_r, norm_Lr, norm_r, norm_T, norm_r, norm_P, norm_r, norm_Mr)
    if (i + 1 ~= length(1))
        xline(norm_r(i),'-.',['50% Surface Lr at normalized T=' num2str(norm_T(i))]);
        txt = ['Temperature at 50% Lr = ' num2str(norm_T(i)*T(end),3) 'K'];
        text(0.4,0.5,txt);
        txt = ['T_{quantum} = ' num2str(T_quantum,3) 'K'];
        text(0.4,0.45,txt);
        txt = ['M_r/M_* at 50% Lr = ' num2str(norm_Mr(i))];
        text(0.4,0.4,txt);
    else
        txt = '50% Lr outside valid model data';
        text(0.4,0.5,txt);
    end
    xline(norm_r(j),'-.',['99% Surface Lr at normalized T=' num2str(norm_T(j))]);
    txt = ['Temperature at 99% Lr = ' num2str(norm_T(j)*T(end),3) 'K'];
    text(0.4,0.65,txt);
    txt = ['M_r/M_* at 99% Lr = ' num2str(norm_Mr(j))];
    text(0.4,0.6,txt);
    title_string = ['Data from StatStar Model for M = ' num2str(M) 'M_O, X = ' num2str(X) ', Z = ' num2str(Z)];
    title(title_string);
    xlim([0 x_limit]);
    ylim([0 y_limit]);
    xlabel('Normalized Radius (r/R_{star})');
    ylabel(y_label);
    legend({'y = Lr(r)','y = T(r)','y = P(r)','y = Mr(r)'},'Location','northeast');
end