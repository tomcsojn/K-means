function idx = findClosestCentroids(X, centroids)
  
K = size(centroids,1);
idx = zeros(size(X,1), 1);

for i = 1:size(X,1)
nums = zeros(K,1);
  for j = 1:K
    nums(j) = sum((X(i,:)-centroids(j,:)).^2);  
  end
  [x,ix] = min(nums);
  idx(i) = ix;
end

endfunction
