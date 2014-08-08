require 'mathn'

how_many = 7

good_nums = []

(10 .. 1000_0000).each do |num|
  if num.prime?
    num_s = num.to_s
    num_s_r = num.to_s

    flag = true
    while (len = num_s.length) != 1
      num_s = num_s.slice(0, len - 1)
      num_s_r = num_s_r.slice(1, len)
      if !num_s.to_i.prime? || !num_s_r.to_i.prime?
        flag = false
        break
      end
    end

    if flag
      p num
      good_nums << num

      # if good_nums.length == 7
      #   break
      # end
    end
  end
end

p good_nums
