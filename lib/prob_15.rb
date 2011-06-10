def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

def path_finder(dimension, origin_number) #returns the count of subprocesses that returned to it
p origin_number
p dimension
	nodes = (dimension+1)**2 
	column_height = dimension+1
	if origin_number < nodes
		count = path_finder(dimension, origin_number + 1)
		count += path_finder(dimension, origin_number + column_height)
	else
		puts "count= #{count}"
		exit
	end
	count + 1
end
	
p path_finder(2, 1)


