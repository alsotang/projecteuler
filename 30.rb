fifth_powers = (10 .. 9**5*6).select do |num|
  num == num.to_s.chars.map {|n| n.to_i ** 5}.reduce(:+)
end

puts fifth_powers.reduce(:+)
