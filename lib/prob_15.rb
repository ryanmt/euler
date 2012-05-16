def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def path_finder(dimension, origin_number, count) #returns the count of subprocesses that returned to it
#p origin_number
#p dimension
	count += 1
	nodes = (dimension+1)**2 
	column_height = dimension+1
	puts "count before if loop: #{count}"
	if origin_number < nodes
	#	puts "count @ if origin_number < nodes: #{count}"
		count += path_finder(dimension, origin_number + 1, count) unless origin_number + 1 % column_height == 0 or origin_number / nodes.to_f < 1
		puts "count @ path_finder (down one): #{count}"
		count += path_finder(dimension, origin_number + column_height, count)
		puts "count @ path_finder (over one): #{count}"
	else
		puts "count = #{count+1}"
		exit
	end
	count + 1
end
	
p path_finder(2, 1, 0)
p path_finder(3, 1, 0)


