sum = 1000
a, b, c =catch :end do
  (1 .. (sum - 3)/3).each do |a|
    (a+1 .. (sum - a)/2).each do |b|
      c = sum - a - b
      if c**2 == a**2 + b**2
        throw :end, [a, b, c]
      end
    end

  end
end

puts a, b, c
puts a * b * c
