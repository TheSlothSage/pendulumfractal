function points = getPoints(v, const)

    points = v;
 
    for i = 0:const.to_t/const.dt
       points = [points; step(points(end,:), const)];
    end
 
 end