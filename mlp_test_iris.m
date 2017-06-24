
clear
clc

myMLP = create_mlp(4,3);
errorList = [];

for s = 1:75
    fileID = fopen('data\iris.csv');
    tline = fgetl(fileID);
    while tline > 0
        data = strsplit(tline, ',');
        input = [str2double(data(1)) str2double(data(2)) str2double(data(3)) str2double(data(4))];
        if strcmp(data(5), 'Iris-setosa')
            output = [1 0 0];
        elseif strcmp(data(5),'Iris-versicolor')
            output = [0 1 0];
        else
            output = [0 0 1];
        end
    
        [outActual, hiddenAct, inputWithW] = getoutput(myMLP, input);
        thisError = mse(output, outActual);
    
        myMLP = train_mlp(myMLP, input, output);
        tline = fgetl(fileID);
    
        errorList = [errorList thisError];
    end
    fclose(fileID);
end



