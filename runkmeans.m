function [centroids, idx] = runkmeans(X, icentroids, ...
                                      max_iters, plot_progress)

if ~exist('plot_progress', 'var') || isempty(plot_progress)
    plot_progress = false;
end

% Plot the data if we are plotting progress
if plot_progress
    figure;
    hold on;
end

[m n] = size(X);
K = size(icentroids, 1);
centroids = icentroids;
prevcentroids = centroids;
idx = zeros(m, 1);

% Run K-Means
for i=1:max_iters
    
    % Output 
    fprintf('K-Means iteration %d/%d...\n', i, max_iters);
    if exist('OCTAVE_VERSION')
        fflush(stdout);
    end
    
    % For each example in X, assign it to the closest centroid
    idx = findClosestCentroids(X, centroids);
    
    % Optionally plot the progress
    if plot_progress
        plotprogress(X, centroids, prevcentroids, idx, K, i);
        prevcentroids = centroids;
        pause(1)
        %s = input('Paused - press enter to continue','s');
    end
    
    % Given the memberships, compute new centroids
    centroids = SelectCentroids(X, idx, K);
end

% Hold off if we are plotting progress
if plot_progress
    hold off;
end

end

