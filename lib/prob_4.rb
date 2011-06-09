arr =[]
(90..999).to_a.combination(2) do |x| 
	val = x.inject(1) {|product, k| product = product*k} 
	arr << val if val.to_s == val.to_s.reverse
end


p arr.sort
	
