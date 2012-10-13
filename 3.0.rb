require 'mathn'

num = 600851475143

result = (2 .. (num ** 0.5).floor).reverse_each.find do |i|
  num % i == 0 and i.prime?
end

puts result
