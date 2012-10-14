matrix = File.read('11.txt').split("\n")
  .map {|line| line.split.map {|i| i.to_i}}

# 得到对角线方向的 n 个连续数值，matrix可以是任意矩形的。
def get_diagonal(matrix, n)
  x_length = matrix.length
  y_length = matrix[0].length

  arr = []
  matrix[0..19].each_with_index do |raw, x|
    raw[0..19].each_with_index do |item, y|
      if x+n<x_length and y+n<y_length
        arr << (n.times.map do |i|
          matrix[x+i][y+i]
        end)
      end
      if x+n<x_length and y>=3
        arr << (n.times.map do |i|
          matrix[x+i][y-i]
        end)
      end
    end
  end
  return arr
end

# 获取水平、竖直、对角线方向上的连续4位数值
horizontal = matrix.each.map do |raw|
  raw.each_cons(4).to_a
end
.flatten(1)

#horizontal[0].each {|line| p line}

vertical = matrix[0].zip(*matrix[1...matrix.length])
  .each.map do |raw|
    raw.each_cons(4).to_a
  end
.flatten(1)
#p vertical

diagonal = get_diagonal(matrix, 4)

#diagonal.each do |item| p item; gets end

# 开始计算乘值最大者

num = (horizontal + vertical + diagonal).max_by do |a|
  a.reduce(:*)
end

puts num.reduce(:*)




