function new_v = step(v, const)

    R  = const.R;
    x0 = const.x0;
    y0 = const.y0;
    dt = const.dt;

    M = const.M;

    am = [0; 0];

    % calculate preturbation due to attractors

    for i = 1:size(M)
        mi = M(:,i);

        if (mi(1) == 0)
            am(1) = 0;
        end

        if (mi(2) == 0)
            am(2) = 0;
        end

        am = am + [mi(3)/(v(1)-mi(1))^2; mi(3)/(v(2)-mi(2))^2];
        
    end

    t = v(3) + dt;

    % motion without attractors

    X = [exp(-abs(t*x0)/R) * (cos(R*t) - sin(R*t));
         exp(-abs(t*y0)/R) * (cos(R*t) - sin(R*t))];

    X = X.*[x0; y0];
    
    % approximation for velocity without attractors

    V = [(X(1)-v(1))/dt;(X(2)-v(2))/dt];

    % integral of combined preturbation acceleration of attractors

    V = V + am*dt;

    % velocity approximation with attractors
    
    P = [v(1) ; v(2)] + V*dt;

    new_v = [P(1) P(2) t V(1) V(2)];

end
