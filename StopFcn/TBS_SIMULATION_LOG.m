%Save result after simulation
str=clock;
FILENAME=['TBSSimulationLog',num2str(str(1)),num2str(str(2),'%02d'),num2str(str(3),'%02d'),'_',...
    num2str(str(4),'%02d'),num2str(str(5),'%02d'), '.mat'];
save(['F:\MATLAB\TBS_Sim\SimulationLog\',FILENAME],'LOG_*')