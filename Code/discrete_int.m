function [y] = discrete_int(x,t,dt)
    y = sum(x(1:t))*dt;
end

