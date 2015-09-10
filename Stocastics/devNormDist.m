
% Stocastics ECE-3522
% Class Assignment 8 subProgram
% Normal Distribution Generator using Box–Muller transform
% By: Devin Trejo

%%
function out = devNormDist(mu, sigma, N)
    
    % Find two uniform Variables
    x1 = rand(1,N);
    x2 = rand(1,N);

    y1 = sqrt(-2.*log(x1)).*cos(2.*pi.*x2);
    %y2 = sqrt(-2.*log(x1)).*sin(2.*pi.*x2);

    out = (y1*sigma + mu);
end