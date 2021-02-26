% Code for single point crossover

function [child1, child2] = spc(parent1,parent2)
    child1 = parent1;
    child2 = parent2;
    random_index = randi(length(parent1));
    child1(random_index) = parent2(random_index);
    child2(random_index) = parent1(random_index);
end