require 'mathn'

good_nums = (1 .. 100_0000).find_all do |num|
  num_arr = num.to_s.split('')
  len = num_arr.length
  rotations = []
  len.times do
    rotations << num_arr.unshift(num_arr.pop()).join.to_i
  end

  bool = rotations.all? do |n|
    n.prime?
  end

  if bool
    p num
    true
  end
end

p "length: #{good_nums.length}"

