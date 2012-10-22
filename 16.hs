import Data.Char
num = foldl1 (+).map digitToInt.show $ 2 ^ 1000

main = print num
