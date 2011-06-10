class Integer
  FibonacciCache = Hash.new do |hash, key|
    if hash.has_key?(key - 1) and hash.has_key?(key - 2)
      hash[key] = hash[key - 1] + hash[key - 2]
    elsif hash.has_key?(key + 1) and hash.has_key?(key + 2)
      hash[key] = hash[key + 2] - hash[key + 1]
    else
      subkey = key.div(2)
      case key.modulo(4)
        when 1
          hash[key] = (2*hash[subkey] + hash[subkey - 1])*(2*hash[subkey] - hash[subkey - 1]) + 2
        when 3
          hash[key] = (2*hash[subkey] + hash[subkey - 1])*(2*hash[subkey] - hash[subkey - 1]) - 2
        else
          hash[key] = hash[subkey] * (hash[subkey] + 2*hash[subkey - 1])
      end
    end
  end
  FibonacciCache[0] = 0
  FibonacciCache[1] = 1

  def fib
    return FibonacciCache[self]
  end

  def fib_uncached
    return FibonacciCache.dup[self]
  end
end
#start_time = Time.now
#1_000_000.fib
#fibs = (5..10).map { |i| i.fib }
#fibs = (1..100000).map { |i| i.fib }
#puts fibs.size
#puts fibs.last
#p Time.now - start_time
puts "Doesn't work !" unless (1..10).map { |i| i.fib } == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]



(1..5000).each do |i|
	length = i.fib.to_s.size
	if length == 1000
		puts "#{i} gave a sequence containing #{length} digits"
		exit
	end
end
