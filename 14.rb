collatz = Hash.new do |h, k|
  if k == 1 
    1
  elsif k.even?
    h[k] = h[k/2]+1
  else
    h[k] = h[3*k+1] + 1
  end
end

num = (1 ... 1_000_000).map do |i|
  [i, collatz[i]]
end
.max_by {|item| item[1]}

puts num
