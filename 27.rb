require 'mathn'

prime_hash = Hash.new do |h, k|
  h[k] = k.prime?
end

a_b_n = (-999 .. 999).map do |a|
  puts a
  (-999 .. 999).map do |b|
    (0 .. Float::INFINITY).each do |n|
      (break [a, b, n]) if not prime_hash[(n ** 2 + a * n + b)]
    end
  end
end

p a_b_n.flatten(1).max_by {|x| x[2]}
