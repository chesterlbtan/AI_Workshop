function out = sigmoid(x)
%SIGMOID A sigmoid function is a mathematical function having a
%characteristic "S"-shaped curve or sigmoid curve.
%   Defined formula is below
%   S(x) = 1 / (1 + exp(-x))

out = 1 ./ (1 + exp(-x));

end
