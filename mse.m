function error = mse(target, actual)
%MSE Measurement of the average of the squares of the errors or deviations
%—that is, the difference between the estimator and what is estimated.
%MSE is a risk function, corresponding to the expected value of the
%squared error loss or quadratic loss. The difference occurs because of
%randomness or because the estimator doesn't account for information that
%could produce a more accurate estimate.
%
% target and actual should be one column only
% number of rows mst be equal and define the number of output

count = length(target);
raw = (target - actual) .^ 2;
error = ones([count 1]) * raw;

end