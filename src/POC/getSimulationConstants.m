%gets constants, dt, and M (columns of coordinate vectors of attractors, with the last row for their strength. Const will have the column size) 
function const = getSimulationConstants(dt,t,x0,y0,R,M)
   const = struct("dt", dt, "to_t", t, "x0", x0, "y0", y0, "M", M, "R", R);
end