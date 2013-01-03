def palindromic?(str)
  str == str.reverse
end

double_base_palindromes = (1...1_000_000).step(2).select do |num|
  palindromic?(num.to_s) and palindromic?(num.to_s(2))
end

p double_base_palindromes.reduce(:+)
