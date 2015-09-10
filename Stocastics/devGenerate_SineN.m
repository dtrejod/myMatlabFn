% Stocastics ECE-3522
% Class Assignment 9
% Sub-Program Create Sine Wave w/ Noise
% By: Devin Trejo

%%
function sig = devGenerate_SineN(Apeak, freqHz, tMax, samFreq, snrDB)

    % Define time between samples
    dt = 1/samFreq;
    periodSig = 1/freqHz;

    % Define time Vector
    t = 0:dt:tMax;
    numSam = length(t);
    
    % Create Signal
    x = Apeak*sin(freqHz*2*pi*t);

    % Compute the Variance of the signal
    xVar = var(x);

    powX = Apeak^2/2;
    
    % Find amplitude of noise
    % SNRDB = (Asignal/Anoise)in DB
    powNoise = powX/db2mag(snrDB);
    
    noiseMean = 0;
    noiseVar = powNoise;
    noiseStd = sqrt(noiseVar);

    xNoise = devNormDist(noiseMean, noiseStd, numSam);
    
    % Create Noisy Signal and Normalize
    sigNoisy = x + xNoise;
    sig = sigNoisy/max(sigNoisy)*Apeak;

end
