%code for Mutation
function mutated_individual = mutation(individual,probability_m)
    mutated_individual = individual;
    for i=1:length(individual)
        if rand()<=probability_m
            if mutated_individual(i) == '0'
                mutated_individual(i) = '1';
            else 
                mutated_individual(i) = '0';
            end
        end
    end
end