num = (1 .. 20).reduce do |a, b|
  a.lcm b
end

puts num
