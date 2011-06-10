to_sum = []

(1..1000).each do |i|
	to_sum << i**i
end

p to_sum.reduce(:+)
