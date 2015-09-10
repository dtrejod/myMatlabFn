% Stocastics ECE-3522
% Class Assignment 8 subProgram
% Uniform Distribution Generator
% By: Devin Trejo

%%
function sumx = devUnifDist(n, N, min, max)

numSam = n;
vecL = N;

% Lower and Upper bound of random Number Generation
lRange = min;
uRange = max;

for i=1:numSam
    x(i,:) = lRange +(uRange-lRange)*rand(vecL,1);
end

% Output the Sum of all randomly generated variables.
sumx = sum(x,1);

end