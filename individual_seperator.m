function [x1,x2] = individual_seperator(individual)
    x1 = bin2dec(individual(1:4));
    x2 = bin2dec(individual(5:8));
end