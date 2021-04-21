% takes a state vector and steps over some dt and updates the state
function new_v = step_NoAttractors(v, const)
  dt = const.dt; % time step
  x0 = const.x0;
  y0 = const.y0; 
  R  = const.R;
   
  t = v(3) + dt;

  % motion of our pendulum

  x = x0*exp(-abs(t*x0)/R) * (cos(R*t) - sin(R*t));
  y = x0*exp(-abs(t*y0)/R) * (cos(R*t) - sin(R*t));

  %approximate derivative

  vx = (x-v(1))/dt;
  vy = (x-v(2))/dt;

  new_v = [x y t vx vy];

end
