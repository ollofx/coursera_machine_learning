function theta = thetaDeNormalize(theta_n, mu, sigma)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% eithere normalize t or denorelize theta
% theta_0 = theta_n_0 - sum((theta_n_j * mu_j)/sigma_j)
% theta_j = theta_n_j / sigma_j

sigma = [1; sigma']
mu = [-1; mu']

theta = theta_n ./ sigma
theta(1,1) = -sum(theta .* mu)

% ============================================================

end
