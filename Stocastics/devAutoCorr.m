% Stocastics ECE-3522
% Class Assignment 9
% Auto-Correlation SubProgram
% By: Devin Trejo

function ccf1 = devAutoCorr(Signal, lags)
    
    [ccf,lags,bounds] = autocorr(Signal,lags);
    
    ccf = ccf*max(Signal)^2/2;
    plot(lags, ccf);
    maxA = ceil(max(ccf));
    ylim([-maxA maxA]);
    xlabel('Lag (tau)');
    ylabel('AutoCorrelation');
    title('AutoCorrelation of Signal');
    
    ccf1 = ccf;
end