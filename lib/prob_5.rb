k = 252000
arr = (1..20).to_a
until arr.each.all? {|x| k % x == 0 }
	k += 1
end

p k
	
