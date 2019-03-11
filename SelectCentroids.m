function centroids = SelectCentroids(X, idx, K)
  
[m n] = size(X);
centroids = zeros(K,n);%zeroing out centroids

c = zeros(K,1);% counting examples assigned for each centroid
for i =1:m
  centroids(idx(i),:) += X(i,:);
  c(idx(i)) += 1;  
endfor
for i=1:K
  centroids(i,:) = centroids(i,:)./c(i);%counting mean of assigned centroids
endfor
endfunction
