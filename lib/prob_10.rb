require 'mathn'
p Prime.each(2e6.to_i).to_a.inject(0){|sum,x| sum = sum + x}
