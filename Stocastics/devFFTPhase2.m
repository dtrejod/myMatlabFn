% Stocastics ECE-3522
% Class Assignment 9
% Fourier Transform Phase (Negative & Positive Frequencies) SubProgram
% By: Devin Trejo

function devFFTPhase2(Signal, fs)
    
    samL = length(Signal);
    
    df = fs/samL;
    NFFT = 2^nextpow2(samL);
    f = (-fs/2) : df : (fs/2)-df;
    
    % Take the fourier transform. The fftshift will duplicate our FT for
    % negative frequencies. (Plot is centered at zero)
    FT = fft(Signal)/samL;
    plot(f, angle(FT));
    xlabel('frequency (Hz)')
    ylabel('ANGLE(FFT(input))')
    title('Phase Spectrum')
end