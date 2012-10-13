num1 = (1 .. 100).map do |i|
  i ** 2
end
.reduce(:+)

num2 = (1 .. 100).reduce(:+) ** 2

puts (num1 - num2).abs
