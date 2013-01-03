arr = File.read('67.txt').split("\n").map do |line|
  line.split(' ').map do |num|
    num.to_i
  end
end

for i in (arr.length - 1).downto(1)
  for j in 0...i
    arr[i-1][j] = arr[i-1][j] + [arr[i][j], arr[i][j+1]].max
  end
end

puts arr[0][0]
