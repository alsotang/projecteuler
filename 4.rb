arr = []
(100..999).reverse_each do |i|
  (100..i).reverse_each do |j|
    num = i * j
    num_s = num.to_s
    if num_s == num_s.reverse
      arr << num
    end
  end
end

puts arr.max



