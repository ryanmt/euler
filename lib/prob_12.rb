=begin 

########333 This stuff ended up taking too long... Here is a thought on how to do it that might be much faster....
triangle_numbers = [1]
(1..6.5e7.to_i).each do |num|
#(1..7).each do |num|
	triangle_numbers << num + triangle_numbers.last
end
require 'mathn'
puts 'on to the calc_divisor stage'
def calc_divisor(num)
	divisors = []
	(1..Math.sqrt(num)).each do |i|
		if num % i == 0
			divisors << i
			divisors << num / i
		end
	end
	divisors
end
p triangle_numbers[-10..-1]
p triangle_numbers.size
triangle_numbers[-10000..-1].each do |n|
	arr = calc_divisor(n.to_i)
	puts arr.size
	if arr.size > 499
		puts "divisor_size: #{arr.size} and arr: #{arr.first}" 
		exit
	end
end
=end 
#-----------------------------
# bigfact - calculating prime factors
def factorize(orig)
    factors = {}
    factors.default = 0     # return 0 instead nil if key not found in hash
    n = orig
    i = 2
    sqi = 4                 # square of i
    while sqi <= n do
        while n.modulo(i) == 0 do
            n /= i
            factors[i] += 1
           	# puts "Found factor #{i}"
        end
        # we take advantage of the fact that (i +1)**2 = i**2 + 2*i +1
        sqi += 2 * i + 1
        i += 1
    end
    
    if (n != 1) and (n != orig)
        factors[n] += 1
    end
    factors
end
#p factorize(72)
#p factorize(72).values.inject(1){|s,i| s *= i+1}
triangle_numbers = [1]
(2..6.5e7.to_i).each do |num|
#(2..7).each do |num|
	triangle_numbers << num + triangle_numbers.last
end
triangle_numbers.each do |num|
	count = factorize(num.to_i).values.inject(1){|sum, i| sum *= i+1}
	if count >= 499
		puts "Num: #{num} has #{count} factors"
	end
end
