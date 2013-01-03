name_arr = File.read('22.txt').split(',').map {|name| name[1...-1]}

def get_alphabetical_value(name)
  alphabetical_values = name.downcase.chars.map {|c| c.ord - 'a'.ord + 1}

  alphabetical_values
end

def get_name_score(name, idx)
  get_alphabetical_value(name).reduce(:+) * (idx + 1)
end

name_scores = name_arr.sort.each_with_index.map do |name, idx|
  get_name_score(name, idx)
end

p name_scores.reduce(:+)
