clear ; close all; clc

fprintf('Finding closest centroids.\n\n');


load('data.mat');
K = 3; % 3 centroids
icentroids = centroidinit(X,K);

max_iters = 10;
[centroids,idx] = runkmeans(X,icentroids,max_iters,true);
