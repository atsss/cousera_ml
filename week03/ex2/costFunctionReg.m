function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

hx = sigmoid(X * theta);
J = -1 / m * (y' * log(hx) + (1-y)' * log(1-hx)) + lambda / m * sum(theta .^ 2);

% X_for_initial = X(:, 1)
% grad_for_initial = 1 / m * (X_for_initial' * (hx - y));
% X_for_rest = X(:, 2:end)
% grad_for_rest = 1 / m * (X_for_rest' * (hx - y)) + lambda / m *theta(2:end);
%
% grad = [grad_for_initial; grad_for_rest]

grad = 1 / m * (X' * (hx - y)) + lambda / m * [0; theta(2:end)];

% =============================================================

end
