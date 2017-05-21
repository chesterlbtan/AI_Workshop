function [outAct, hiddenAct, inputWithW] = getoutput(model, input)
%GETOUTPUT Summary of this function goes here
%   Detailed explanation goes here

input_weights = model.in_weights;
output_weights = model.out_weights;

inputWithW = [ones(size(input,1),1),input];
hiddenAct_raw = input * input_weights;
hiddenAct = 1 ./ (1 + exp(-hiddenAct_raw));
outAct_raw = hiddenAct * output_weights;
outAct = 1 ./ (1 + exp(-outAct_raw));



end
