digits = (0..9).to_a

puts digits.permutation.to_a.sort[1_000_000 - 1].join
