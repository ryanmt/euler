

cuboids = Hash.new {|h,k| h[k] = 0 }
(1..500).each do |i|
	puts i
	(1..1000).each do |j|
		(1..2000).each do |k|
			sides = 2*(i*k + i*j + j*k)
			cuboids[sides] += 1
		end
	end
end
puts 'ended the cuboids loop'
cuboids.each {|k, v| puts k if v == 1000 }



=begin
YAML.dump('cuboids.txt', cuboids)

def cover_it(arr)
	l = arr.shift
	b = arr.shift
	h = arr.shift
	2*(l*b + l*h + b*h)
end


cover_it([5,1,1])
cover_it([11,1,1])
cover_it([5,3,1])
cover_it([7,2,1])
=end
