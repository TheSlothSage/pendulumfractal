function points = getPoints_NoAttractors(v, const)

   points = v;

   for i = 0:const.to_t/const.dt
      points = [points; step_NoAttractors(points(end,:), const)];
   end

end