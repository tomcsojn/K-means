function centroids = centroidinit(X, K,randinit)
% put centroids on a random example from dataset X
if(randinit)
  centroids = zeros(K,size(X,2));
  randix = randperm(size(X,1));
  centroids = X(randix(1:K),:);
else
%put centroids on the middle
  A = 600000
  B = 800000
  centroids = A+(B-A)*rand(K,2);
endif
end