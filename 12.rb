require 'mathn'

triangle = Hash.new do |h, k|
  h[k] = (k == 1 ? 1 : h[k-1] + k)
end

def divisors_num(num)
  prime_division = num.prime_division

  if prime_division.size == 1
    sum = prime_division[0][1] + 1
  else
    sum = prime_division.map{|a| a[1]+1}
      .reduce {|a, b| a * b}
  end

  return sum
end

num = (2..Float::INFINITY).find do |i|
  divisors_num(triangle[i]) > 500
end

puts triangle[num]



