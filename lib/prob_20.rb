def fact(n)
	if n == 0
		1
	else
		n * fact(n-1)
	end
end
p num = fact(10)

arr = num.to_s.split('')
p arr.map(&:to_i).inject(0){|sum,x| sum = sum + x}

