module Enumerable
  def lazy_map(&block)
    Enumerator.new do |yielder|
      self.each do |item|
        yielder << yield(item)
      end
    end
  end
end

fibonacci = Hash.new do |h, k|
  h[k] = k < 2 ? k : h[k-1] + h[k-2]
end

nums = (0...Float::INFINITY).lazy_map do |i|
  fibonacci[i]
end
.take_while {|i| i < 4_000_000}
.select {|i| i.even?}

num = nums.reduce(:+)

puts num



