up_limit = 1001
init_num = up_limit ** 2

total = 0

(1 .. up_limit).step(2).to_a.reverse.each do |len|
  4.times do 
    total += init_num
    init_num -= (len - 1)
  end
end

total -= 3

puts total
