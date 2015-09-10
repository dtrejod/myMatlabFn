% Program Print figures to current folder
% By: Devin Trejo

%%
function printFigures()

    [fileName, pathName] = uiputfile('*.png');
    
    h = get(0,'children');
    for i=1:length(h)
      print(sprintf('-f%.1d',i),'-dpng', [pathName [fileName(1:length(fileName)-4) '_' num2str(i) '.png']])
    end
end