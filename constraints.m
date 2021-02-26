% P is penalty
function P = constraints(x1,x2)
    multiplier = 50;
    constraint1 = x1*x2+x1-x2+1.5;
    constraint2 = 10 - x1*x2;
    P = 0;
    if constraint1 >0
        P = P + multiplier*constraint1;
    end
    if constraint2 > 0
        P = P + multiplier*constraint2;
    end
end