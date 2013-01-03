recurring_cycle_length = (2...1000).map do |num|
  num = num / 2 while num % 2 == 0
  num = num / 5 while num % 5 == 0
  if num == 1
    next [num, 0]
  else
    (1..Float::INFINITY).each do |k|
      if ((10 ** k - 1) % num) == 0
        break [num, ((10 ** k - 1)/num).to_s.length]
      end
    end
  end
end

p recurring_cycle_length.max_by {|x| x[1]}
