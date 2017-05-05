% Initialization file for TBS Caipriha Lifting Body 

%==================================================================
% Useful Constants
%==================================================================
g       = 9.76;                   % Gravity [m/s/s]
%==================================================================
% Atmospheric Constants
%==================================================================
air_density=1.225;                 % Density [Kg/m^3]
%==================================================================
% Aircraft Configuration
%==================================================================
S_seg1  = 0.0739;
S_seg2  = 0.0554;
S_seg3  = 0.0622;
MAC1=0.2429;
MAC2=0.2168;
MAC3=0.1858;
L1X = 0.02156;
L2X =-0.02848;
L3X =-0.12416;
L1Y = 0.08261;
L2Y = 0.23824;
L3Y = 0.37118;
mass = 0.876;                         % Total Mass [kg]
Inertia = [0.024 0 0.00;
           0 0.008 0;
            0.00 0 0.032;];

%==================================================================
% Initial Conditions
%==================================================================
init_att_hov=[-2.356 1.521 -2.356];
init_pos_hov=[0 0 0];
init_vel_hov=[0 0 0.00001];
init_pos_cru=[0 0 -50];
init_vel_cru=[7 0 0.2];
init_att_cru=[0 0.105 0];
%==================================================================
% Actuators
%==================================================================
% wn_act = 44.0;                          % Actuator Bandwidth [rad/sec]
% z_act = 1/sqrt(2);                      % Actuator Damping
% 
% dwf_max  = 30;                          % Limits on Wing Flap Deflection [deg]
% dbf_max  = 60;                          % Limits on Body Flap Deflections [deg]
% dr_max   = 60;                          % Limits on Rudder Deflections [deg]
% max_lim = [dwf_max dwf_max dbf_max dbf_max 0 0 dr_max];
% min_lim = [-dwf_max -dwf_max 0 0 -dbf_max -dbf_max -dr_max];
%     
% % [dwfl dwfr dbfll dbflr dbful dbfur dr] to [da de dr df+ df- ddf];
% Act2Aero = 0.5*[1 -1 0 0 0 0 0;1 1 0 0 0 0 0 ;0 0 0 0 0 0 2;0 0 1 1 0 0 0; 0 0 0 0 1 1 0;0 0 1 -1 1 -1 0;];
% Aero2Act = pinv(Act2Aero);


%==================================================================
% Thrust
%==================================================================
load TBSSimulationDatabase20170330;
RS=ORIGIN_RPM;
AS_R=ORIGIN_AS_R;
motor_t0=ORIGIN_FM;
motor_m0=ORIGIN_MM;

%==================================================================
% Aircraft Aerodynamic Coefficients
%==================================================================

% Basic configuration

alpha_vec_0= ORIGIN_ALFA;
as=ORIGIN_AS;
CYbeta = -0.01242;                  % per deg
Clbeta = -0.00787;                     
 
% Damping Coefficients (per rad/sec)
alpha_vec_damping = [0 5 10 12 14 16 18 20 22 25 30];
Cmq = [-2.03 -1.58 -1.16 -1.76 -1.76 -1.75 -1.74 -2.52 -2.99 -5.71 -8]*1e-1;
Cnp = [3.81 3.53 2.19 2.44 1.79 1.67 2.01 2.22 3.07 3.79 8.50]*1e-1;
Clp = [-4.98 -6.0 -3.98 -5.79 -4.25 -4.99 -6.49 -6.19 -8.10 -8.72 -24.10]*1e-1;
Cnr = [-7.94 -8.37 -9.21 -9.22 -8.67 -9.22 -9.46 -10.07 -10.90 -12.86 -20.41]*1e-1;
Clr = [4.96 5.98 8.40 8.06 6.86 5.72 6.03 8.99 9.57 13.57 44.90]*1e-1;
