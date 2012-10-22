{-matrix below is 2 x 2 grid-}
{-1 1 1 -}
{-1 2 3 -}
{-1 3 6 -}
num = iterate (scanl1 (+)) (repeat 1) !! 20 !! 20

main = print num
