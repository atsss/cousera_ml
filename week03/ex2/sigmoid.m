function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% exp (X) => Compute 'e^x' for each element of X.
% exp(eye(2))
% ans =
%    2.7183   1.0000
%    1.0000   2.7183

% ./ X => divided by each element of X
% 1 ./ (1 + exp(eye(2)))
% ans =
%    0.26894   0.50000
%    0.50000   0.26894

g = 1 ./ (1 + exp(-z))

% =============================================================

end
