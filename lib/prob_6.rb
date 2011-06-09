num = (1..10).to_a

sum_of_squares = num.inject(0){|sum, x| sum = sum + x**2}
square_of_sums = num.inject(0){|sum,x| sum = sum + x}**2

p sum_of_squares - square_of_sums
