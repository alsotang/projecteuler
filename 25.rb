fibonacci = Hash.new do |hash, key|
  hash[key] = key <= 2 ? 1 : hash[key-1] + hash[key-2]
end

puts fibonacci[12]
(1..Float::INFINITY).each do |i|
  num = fibonacci[i]
  if num.to_s.length == 1000
    puts i 
    break
  end
end
