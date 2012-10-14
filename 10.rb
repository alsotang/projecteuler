require 'mathn'

num = Prime.each.take_while {|n| n < 2_000_000}.reduce(:+)

puts num
