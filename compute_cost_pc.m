% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	cost = 0; 
  [n m] = size(points);
  NC = length(centroids(:,1));
  c = [];
	% TODO compute clustering solution cost
  for i=1:n
      diff1=(points(i,:) .- centroids(1,:));
      diff1=diff1 .^2;
      diff1=sum(diff1);
      current=1;
      
      for j=2:NC
        diff2=(points(i,:) .- centroids(j,:));
        diff2=diff2 .^2;
        diff2=sum(diff2);
        
        if(diff1>=diff2)
          current=j;
          diff1=diff2;
         endif
      endfor
      
      c = [c;current];
    endfor
    
    for i= 1 : NC 
      s = 0;
      for j = 1 : length(c(:,1))
        if c(j,1) == i
          diff2 = (points(j,:) .- centroids(i,:));
          diff2 = sum(diff2 .^2);
          s = s + sqrt(diff2);
        endif
        endfor
        cost = cost + s;
      endfor
  
end

