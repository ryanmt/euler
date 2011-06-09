num = 2**1000

p num

arr = num.to_s.split('')
p arr.map(&:to_i).inject(0){|sum,x| sum = sum + x}

