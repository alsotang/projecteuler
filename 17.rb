@num_str_single_maps = {'0' => 'zero', '1' => 'one', '2' => 'two', '3'=> 'three',
'4'=> 'four', '5'=> 'five', '6'=> 'six', '7'=> 'seven',
'8'=> 'eight', '9'=> 'nine'}

@num_str_ten_maps = {'1' => 'ten', '2' => 'twenty', 
'3' => 'thirty', '4' => 'forty', '5' => 'fifty',
'6' => 'sixty', '7' => 'seventy', '8' => 'eighty',
'9' => 'ninety'}

@num_str_10_19_maps = {'10' => 'ten', '11' => 'eleven', '12' => 'twelve',
'13' => 'thirteen', '14' => 'fourteen', '15' => 'fifteen',
'16' => 'sixteen', '17' => 'seventeen', '18' => 'eighteen',
'19' => 'nineteen'}


def convert_one_digit(num_string)
  if num_string == '0'
    ''
  else
    @num_str_single_maps[num_string]
  end
end

def convert_two_digit(num_string)
  if num_string[0] == '0'
    convert_one_digit(num_string[1])
  elsif num_string[0] == '1'
    @num_str_10_19_maps[num_string]
  else
    @num_str_ten_maps[num_string[0]] + (if num_string[1] == '0' then '' else '-' end) +\
      convert_one_digit(num_string[1])
  end
end

def convert_three_digit(num_string)
  convert_one_digit(num_string[0]) + ' hundred' + (if num_string[1..-1] != '00' then ' and ' else '' end) + \
    convert_two_digit(num_string[1..-1])
end

def convert_num_to_words(num_string)
  if num_string.length == 1
    convert_one_digit(num_string)
  elsif num_string.length == 2
    convert_two_digit(num_string)
  elsif num_string.length == 3
    convert_three_digit(num_string)
  elsif num_string.length == 4
    'one thousand'
  end
end

num_strings = (1 .. 1000).map do |num|
  convert_num_to_words(num.to_s)
end

puts num_strings
puts num_strings.join.delete('- ').length
