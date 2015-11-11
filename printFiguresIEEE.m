% Program Print figures to current folder
% By: Devin Trejo

% Print Figures for IEEE formatted Column Paper
% Requires 'export_fig' in your path: https://github.com/altmany/export_fig

%%
function printFiguresIEEE()

    [fileName, pathName] = uiputfile('*.png');
    
    h = get(0,'children');
    for i=1:length(h)
        set(h(i).CurrentAxes, 'Color', 'none');
        set(h(i), 'units', 'inches', 'Position', [0, 0, 7, 2]);
        saveFileName = [pathName [fileName(1:length(fileName)-4) ...
            '_' num2str(i) '.png']];
        export_fig(h(i), saveFileName, '-transparent', '-m2.5');
    end
end