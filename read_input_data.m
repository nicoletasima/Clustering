% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	
  format long g
	% TODO read NC
	f = fopen(file_params,'r');
	NC = fscanf(f,'%d');
	% TODO read points

  points = load(file_points,'-ascii');
	end

