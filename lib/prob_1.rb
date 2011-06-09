#!/usr/bin/env ruby

numbers = []
1000.times { |i| 	numbers << i if i % 3 == 0 or i % 5 == 0 }
puts numbers.inject(0){|sum, i| sum + i }

			
