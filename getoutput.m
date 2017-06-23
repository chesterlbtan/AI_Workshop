function [outAct, hiddenAct, inputWithW] = getoutput(model, input)
%GETOUTPUT Summary of this function goes here
%   Detailed explanation goes here
% OUTACT is the output activation (the thing we want)

input_weights = model.in_weights;
output_weights = model.out_weights;

inputWithW = [ones(size(input,1),1),input];
hiddenAct_raw = input * input_weights;
hiddenAct = sigmoid(hiddenAct_raw);
outAct_raw = hiddenAct * output_weights;
outAct = sigmoid(outAct_raw);

end
