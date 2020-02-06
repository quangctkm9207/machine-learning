% Logistic Regression implemented in Octave

% SIGMOID FUNCTION (g)
g = 1./(1 .+ e.^(-z));

% HYPOTHESIS FUNCTION (h)
h = g(X * theta);

% COST FUNCTION (J)
J = (1/m) * sum(-y .* log(h) - (1 - y) .* log(1 - h));

% GRADIENT FUNCTION (grad)
grad = (1/m) * X' * (h - y);

% PREDICT FUNCTION (p)
p = h >= 0.5;

% SPECIAL: FOR REGULARIZED LOGISTIC REGRESSION
% It includes lambda.
% Other functions are the same, only COST and GRADIENT functions are different.
shift_theta = theta(2:size(theta)); % Avoid regularize theta 1
theta_reg = [0;shift_theta];

J = (1/m) * sum(-y .* log(h) - (1 - y) .* log(1 - h)) + (lambda / (2 * m)) * sum(theta_reg.^2);
grad = (1/m) * X' * (h - y) + (lambda/m) * theta_reg;
