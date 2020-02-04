% Basic machine learning functions represented in Octave

% NOTATION
% m : the number of training samples
% n : the number of features (inputs)
% X : the input of training samples ([m x (n + 1)] matrix)
% y : the output of training samples ([m x 1] vector)
% theta : the fitting parameters ([(n + 1) x 1] vector)

% COST FUNCTION
J = (1/(2*m)) * sum((X*theta - y).^2)

% GRADIENT DESCENT
J_history = zeros(num_iters, 1);

for i = 1:iterations
  theta = theta - (alpha/m) * (X'*(X*theta - y));
    
  % Save the cost J in every iteration
  J_history(iter) = costFunction(X, y, theta);
end

% FEATURE NORMALIZATION
X_norm = (X .- mean(X,1)) ./ std(X,0,1);

% NORMAL EQUATION
theta = (X'*X)^(-1)*X'*y;

% PREDICTION
value = theta' * newInput
