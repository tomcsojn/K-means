clear ; close all; clc

fprintf('Finding closest centroids.\n\n');

%range of random matrix
##A = 0
##B = 10
##X = A+(B-A)*rand(600,2);
X = load('dat.txt')
K = 5; % Number of centroids
icentroids = centroidinit(X,K,false);


max_iters = 10;
[centroids,idx] = runkmeans(X,icentroids,max_iters,true);
