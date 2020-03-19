function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  format long g
  points = load(file_points,'-ascii');
  costuri = [];
  centroids = [];
  for NC = 1 : 1 : 10
    centroids = clustering_pc(points,NC);
    cost = compute_cost_pc(points, centroids);
    costuri(NC,1) = cost;
  endfor 
  plot(costuri);
  xlabel('Cluster count');
  ylabel('Cost');
end
 

