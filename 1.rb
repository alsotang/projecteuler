num = (0...1000).map do |i|
  i if i % 3 == 0 or i % 5 == 0
end
.compact
.reduce(:+)

puts num
