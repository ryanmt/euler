arr = [0,1,2,3,4,5,6,7,8,9]

perms = arr.permutation.to_a.map(&:to_s).sort

puts perms[1e6-1]

