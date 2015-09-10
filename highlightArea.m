% MicroElectronics
% Lab Assigment 8
% SubProgram Plot Areas
% By: Devin Trejo

function highlightArea (xVal, ylimit)

% Get all ploting colors
cc=hsv(12);

% Find yValues
yVal = [ylimit ylimit];

for i = 1:size(xVal, 1)-1
    yVal = [yVal; yVal];
end

% Plot the areas
for i=1:size(xVal, 1)
    hold on
    h = area(xVal(i,:), yVal(i,:));
    set(h, 'FaceColor', cc(i,:));
end

end