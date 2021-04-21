%KaleySagehorn
%https://github.com/TheSlothSage/pendulumfractal/blob/main/README.md

addpath(".");

% dt = 10^-3 

const = getSimulationConstants(.001, 100, 2, 1, 20, [5 -1 0; -1 0 -1; 0 0 0]);
v = initState(const);

p = getPoints(v, const)

plot(p(:,1), p(:,2));