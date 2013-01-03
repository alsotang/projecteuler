require 'mathn'

def factors_of(number)
  if number == 1 then return [1] end

  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |_powers|
    primes.zip(_powers).map{|prime, power| prime ** power}.inject(:*)
  end

  divisors.delete(number)
  divisors.sort
end

amicable_hash = Hash.new do |h, k|
  h[k] = factors_of(k).reduce(:+)
end

amicable_numbers = []
(1...10000).each do |num|
  if num == amicable_hash[amicable_hash[num]] and num != amicable_hash[num]
    amicable_numbers << num
  end
end

puts amicable_numbers.reduce(:+)

