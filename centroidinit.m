function centroids = centroidinit(X, K)
% put centroids on a random example from dataset X
centroids = zeros(K,size(X,2));
randix = randperm(size(X,1));
centroids = X(randix(1:K),:);

end