function view_clusters(points, centroids)
  [n m]=size(points);
  NC=length(centroids(:,1));
  c=[];
  colors=[];
  
  for i=1:NC
    colors(i,:)=rand(1,m);
  endfor
  
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
    
    for i=1:NC 
      matrix=[];
      l=1;
      for j=1:length(c(:,1))
        if c(j,1)==i
          matrix(l,:)=points(j,:);
          l++;
        endif
      endfor
      
      x=[];
      y=[];
      z=[];
      for j=1:length(matrix(:,1))
        x(1,j)=matrix(j,1);
        y(1,j)=matrix(j,2);
        z(1,j)=matrix(j,3);
      endfor
      
      C = colors(i,:);
      
      hold on;
      scatter3(x,y,z,30,C,'s','filled');
    endfor
	
end