# HK_Polyu_VTOL_Sim  
VTOL simulation Platform  


## Requirements:  
MATLAB SIMULINK 2016b  
Desktop Real-time Kenel

## Description: 
Duo-rotor TBS Caiprinha tail-sitter simulation application:  
  <pre><code>TBS_SIM.slx</code></pre>

Duo-rotor TBS Caiprinha tail-sitter hardware-in-loop simulation application:  
  <pre><code>TBS_SIM_UPD_HIL.slx</code></pre>
  
Simulation application share the pre-load functions and stop functions.  
Preload functions "*TBS_Cai_simu_init_20170316.m*" initialise the simulation workspace, "*TBSAeroDatabase20170330.mat*" contains thrust and aerodynamic database of Caiprinha.  
  
Stop function "*TBS_SIMULATION_LOG.m*" save the simulation results and will run once the simulation finished. The file named with 
date and time.

  
Please refer to:  
Jingxuan Sun, Boyang Li, Lu Shen, Chih-Keng Chen, and Chih-Yung Wen. "Dynamic Modeling and Hardware-In-Loop Simulation for a Tail-Sitter
Unmanned Aerial Vehicle in Hovering Flight", *AIAA Modeling and Simulation Technologies Conference, AIAA SciTech Forum,* (AIAA 2017-0811)   
[http://dx.doi.org/10.2514/6.2017-0811](http://dx.doi.org/10.2514/6.2017-0811) 
