function model_out = train_mlp( model, input, target)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[outAct, hiddenAct, inputWithW] = getoutput(model, input);

respOut = outAct .* (ones(size(outAct)) - outAct) .* (target - outAct);
respHidden = hiddenAct .* (ones(size(hiddenAct)) - hiddenAct) .* (respOut * model.out_weights');

model.out_weights = model.out_weights + model.learning_rate * (hiddenAct' * respOut);
model.in_weights = model.in_weights + model.learning_rate * (input' * respHidden);

model_out = model;
end

