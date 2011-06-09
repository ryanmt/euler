
def iterate(integer) # returns array of terms
	out_arr = [integer]
	while integer != 1
		if integer.even?
			integer = integer/2
		else 
			integer = 3*integer + 1
		end
		out_arr << integer
	end
	out_arr
end


arr = (1000..1000000).map do |start|
	ans = iterate(start)
	[ans.size, start]
end
 
p arr.sort!.last
