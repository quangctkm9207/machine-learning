% Basic machine learning functions represented in Octave

% Notation
% m : the number of training samples
% n : the number of features (inputs)
% X : the input of training samples ([m x (n + 1)] matrix)
% y : the output of training samples ([m x 1] vector)
% theta : the fitting parameters ([(n + 1) x 1] vector)

% Cost function
m = length(y); % number of training examples

function J = costFunction(X, y, theta)
J = (1/(2*m)) * sum((X*theta - y).^2)

% Gradient Descent
J_history = zeros(num_iters, 1);

for i = 1:iterations
  theta = theta - (alpha/m) * (X'*(X*theta - y));
    
  % Save the cost J in every iteration
  J_history(iter) = costFunction(X, y, theta);
end
