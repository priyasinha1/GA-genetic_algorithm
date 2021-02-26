%Roulette wheel selection
function out = roulette_wheel_selection(population,population_size)
    sum= 0;
    for i = 1:population_size
        sum = sum + fitness(population{i,2});
    end
    random_number = rand();
    index = 1;
    temp = 0;
    while index<=population_size
        temp = temp+fitness(population{index,2});
        if temp/sum > random_number
            break;
        end
        index = index+1;
    end
    out = population{index,1};
end