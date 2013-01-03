puts (1..1000).map {|num| num ** num}.reduce(:+).to_s[-10,10]
