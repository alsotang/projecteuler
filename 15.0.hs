-- choose 20 from a set of 40, in math, say, C(40, 20)
num = product [1..40] `div` (product [1..20] * product [1..(40-20)])

main = print num
