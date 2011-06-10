require 'linguistics'

obj = Linguistics::EN
count = 0
(1..1000).each do |num|
	count += obj.numwords(num).gsub(/[\s-]/,'').size
end
p count
