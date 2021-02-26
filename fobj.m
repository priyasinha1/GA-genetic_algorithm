function z = fobj(x)
    [x1 x2] = individual_seperator(x);
    z = 100*(x1^2-x2)^2+(1-x1^2);
    z = z + constraints(x1,x2);
end

