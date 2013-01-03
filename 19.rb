def leap_year?(year)
  return ((year % 4 == 0 and year % 100 != 0) or year % 400 == 0)
end

@month_days = [31, 28, 31, 30, 31, 30,
  31, 31, 30, 31, 30, 31]

def get_month_days(year, month)
  days = @month_days[month]
  days +=1 if (leap_year?(year) and month == 1)

  return days
end

days_arr = [2]

(1901..2000).each do |year|
  (0...12).each do |month|
    days_arr << days_arr[-1] + get_month_days(year, month)
  end
end

puts days_arr[0...-1].select {|days| days % 7 == 0 }.size
