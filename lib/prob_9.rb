def pythag?(arr)
	arr.first**2 + arr[1]**2 == arr.last**2
end

puts 'test is true' if pythag?([3,4,5])

(1..430).to_a.combination(3).map(&:sort).each do |set|
	if set[0] + set[1] + set[2] == 1000
		p set[0] * set[1] * set[2] if pythag?(set)
	end
end

