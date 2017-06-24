function model = create_mlp(input_count, output_count)
% CREATE_MLP Create a struct representing an MLP network object.
% Multi-Layer Perceptron
%    MODEL = CREATE_MLP(input, output)


neuron_count = input_count + 1;

weightcenter = 0;
weightrange = 1;
inweights = 2 * rand(input_count, neuron_count) - 1;
outweights = 2 * rand(neuron_count, output_count) - 1;
inweights = weightcenter + (weightrange * inweights);
outweights = weightcenter + (weightrange * outweights);

learningRate = 0.2;

model = struct;
    model.input_count = input_count;
    model.output_count = output_count;
    model.hiddenneuron_count = neuron_count;
    model.in_weights = inweights;
    model.out_weights = outweights;
    model.learning_rate = learningRate;


end

