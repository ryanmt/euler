start_time = Time.now
# Generate Factorials
class Integer
  def !
    return 1 if self < 2
    (2..self).inject(:*)
  end
end

Factorials = (0..9).map(&:!)

# Catch any solutions below 587 and use them to solve larger numbers
def sum_square_digits(q)
  sum = 0
  return 1 if q == 0
  until q == 0
    q, r = q / 10, q % 10
    sum += r*r
  end
  sum
end
Cache = (0..567).map do |n|
  seq = n
  seq = sum_square_digits(seq) until seq == 1 || seq == 89
  seq == 89
end

# Clean up the arr to contain only unique solutions and an indication of the number that sequence represents
limited_set = (1..7).map do |digits|
  (0..9).to_a.reverse.repeated_combination(digits).map {|a| a.join.to_i}.select {|a| Cache[sum_square_digits(a)]}
end

counts = limited_set.flatten.map do |a|
  digits = a.to_s.chars.map(&:to_i)
  numerator = (digits.count - digits.count(0)) * Factorials[digits.count-1]
  denominator = (0..9).inject(1) {|prod, n| prod * Factorials[digits.count(n)] }
  numerator / denominator
end


p counts.inject(:+)


puts "Time was: #{Time.now - start_time}"
## OLD METHOD... Very slow, brute force!
=begin
start = ARGV.first.to_i || 1
ends = ARGV.last.to_i || 1e7
arr = (start..ends).to_a

count = 0
matches = arr.map do |num|
  nums = [num]
  next_num = num.to_s.split('').map(&:to_i).inject(0) {|sum, v| sum += v**2}
  until next_num == 89 or next_num == 1
    nums << next_num
    next_num = next_num.to_s.split('').map(&:to_i).inject(0) {|sum, v| sum += v**2}
  end
  count += 1 if next_num == 89
end
puts "Count: #{count}"
=end
