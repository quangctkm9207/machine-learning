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
