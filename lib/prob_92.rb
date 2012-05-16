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
