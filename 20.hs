import           Data.Char
num = sum $ map digitToInt $ show $ product [1..100]

main = print num
