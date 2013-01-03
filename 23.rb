require 'mathn'

def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |_powers|
    primes.zip(_powers).map{|prime, power| prime ** power}.inject(:*)
  end

  divisors.delete(number)
  divisors.sort
end

def abundant?(num)
  factors_of(num).reduce(:+) > num
end

abundant_numbers = [12]

(13 .. 28123).each do |num|
  if abundant?(num)
    abundant_numbers << num
  end
end

abundant_numbers.sort!

two_abundant_sum_numbers = abundant_numbers.map do |num|
  idx = abundant_numbers.index(num)
  abundant_numbers[idx..-1].map do |num2|
    num + num2
  end
end

two_abundant_sum_numbers.flatten!.sort!.uniq!

p ((1..28123).to_a - two_abundant_sum_numbers).reduce(:+)

