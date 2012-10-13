require 'mathn'

#bignum = 600851475144
bignum = 600851475143

results = []
(2 .. (bignum ** 0.5).floor).each do |i|
  while bignum % i == 0
    bignum /= i
    results << i
  end
end

puts results.uniq.keep_if {|i| i.prime?}
