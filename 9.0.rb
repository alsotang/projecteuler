#cal exec time start.
#31875000

#real	0m36.361s
#user	0m36.042s
#sys	0m0.164s

puts 'cal exec time start.'

catch :end do
  (1 .. 1000).each do |i|
    (1 .. 1000).each do |j|
      (1 .. 1000).each do |k|
        if i + j + k == 1000 and (i**2 + j**2 == k ** 2)
          puts i * j * k
          throw :end
        end
      end
    end
  end
end
