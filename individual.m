% I1 is 1st Individual
% I2 is 2nd Individual
function val = individual(lb,ub)
    I1 = dec2bin(randi([lb ub]),4);
    I2 = dec2bin(randi([lb,ub]),4);
    val = append(I1,I2);
end