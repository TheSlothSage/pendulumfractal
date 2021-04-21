%KaleySagehorn
%https://github.com/TheSlothSage/pendulumfractal/blob/main/README.md

addpath(".");
const = getSimulationConstants(.0001, 10, 1, 2, 4, [4 4 4; 1 -1 0; 0 0 -1]);
v = initState(const);

hold on

p = getPoints_NoAttractors(v, const)
plot(p(:,1), p(:,2))

hold off