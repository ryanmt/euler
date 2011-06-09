def fib(n)
  return n if n < 2
  vals = [0, 1]
  n.times do 
    vals.push(vals[-1] + vals[-2]) 
  end
  vals
end

p fib(100).map{|x| x if x < 4e6 and x.even?}.compact.inject(0){|sum,v| sum =sum + v}
