% computes the NC centroids corresponding to the given points using K-Means
function [centroids] = clustering_pc(points, NC)
	centroids = [];
	% TODO K-Means code 
  % computes the NC centroids corresponding to the given points using K-Means
  [n m] = size(points);
  r = NC + 1;
  centroids(1:NC,:) = points(1:NC,:);
  dif = centroids;
  while (dif != 0)
    dif = centroids;
    c = [];
    
    for i = 1 : n
      diff1 = (points(i,:) .- centroids(1,:));
      diff1 = diff1 .* diff1;
      diff1 = sum(diff1);
      current = 1;
    
      for j = 2 : NC
        diff2 = (points(i,:) .- centroids(j,:));
        diff2 = diff2 .* diff2;
        diff2 = sum(diff2);
        if diff1 >= diff2
          current = j;
          diff1 = diff2;
        endif
      endfor
      c = [c; current];
    endfor
    oldPositions = centroids;
    centroids = zeros(NC,m);
    pointscls = zeros(NC,1);
    
    for k = 1 : length(c)
      centroids(c(k),:) = points(k,:) + centroids(c(k),:);
      pointscls(c(k),1)++;
    endfor
    
    for p = 1 : NC
      if (pointscls(p,1) != 0)
        centroids(p,:) = centroids(p,:)/pointscls(p,:);
      else
        centroids(p,:) = points(r,:);
        r = r + 1;
      endif
    endfor
    dif = sum(sum(centroids .- oldPositions).^ 2);
  endwhile

endfunction 
