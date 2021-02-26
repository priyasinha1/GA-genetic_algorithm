clc
clear
population_size = 10;
lb = 0;
ub = 15;
% probability for crossover
Probability_c = 0.7;
% probability for mutation
Probability_m = 0.02;
% Maximum Iteration
maximum_it = 50;
population = generatepopulation(population_size,lb,ub);
best_fitness_array = [];
global_best_individual = -1;
global_best_individual_value = 99999999999989;


for i=1:maximum_it
    % Best Fitness in a generation
    best_fit_indi = population{1,1};
    best_fit_value = population{1,2};
    for j=2:population_size
        if best_fit_value > population{j,2}
            best_fit_value = population{j,2};
            best_fit_indi = population{j,1};
        end
    end    
    if best_fit_value < global_best_individual_value
        global_best_individual_value = best_fit_value;
        global_best_individual = best_fit_indi;
    end
    best_fitness_array = [best_fitness_array; global_best_individual_value];
    
    % Roulette Selection
    selection_pool = {};
    for j=1:population_size
        selection_pool{j,1} =roulette_wheel_selection(population,population_size);
    end
    
    % Single Point Crossover
    for j=1:2:population_size
        if rand() <= Probability_c
            random_indexes = randi(population_size,2,1);
            index1 = random_indexes(1);
            index2 = random_indexes(2);
            [child1 child2]= spc(selection_pool{index1,1},selection_pool{index2,1});
            selection_pool{index1,1} = child1;
            selection_pool{index2,1} = child2;
        end
    end
    
    % Interchanging Mutation
    for j=1:population_size
        selection_pool{j,1} = mutation(selection_pool{j,1},Probability_m);
    end
    
    %adding fitness in Selection pool
    for j=1:population_size
        selection_pool{j,2} = fobj(selection_pool{j,1});
    end
    population = selection_pool;
end

global_best_individual
global_best_individual_value
[global_best_x1 global_best_x2] = individual_seperator(global_best_individual)