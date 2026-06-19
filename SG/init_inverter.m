% Initialization file for MPC 3-phase inverter

Ts = 1e-5;          % Sampling time
Lfilter = 2.4e-3;   % Filter inductance
Cfilter = 40e-6;    % Filter capacitance
Vdc = 400;          % DC link voltage
Res = 50;           % Load resistance (≈1 kW)
Vref = 188;