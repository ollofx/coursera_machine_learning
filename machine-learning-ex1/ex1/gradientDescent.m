function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    % objective is to calculate vector
    % deltaj = alpha * (1/m) * sumi(h_theta(Xi) - yi) * Xij)
    % calculate term h_theta(Xi) - yi vector m size i 1=>m 
    variance = (X * theta) - y;
    % now calculate the partial coefitient
    % to have one row , each element j
    % h_theta(Xi) - yi * Xij
    partial = variance' * X;
    % delta vector
    delta = (1/m) * partial';
    % calculate the next theta
    theta = theta - (alpha * delta);
    
 
    % ============================================================
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
