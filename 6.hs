diff = squareOfSum - sumOfSquares 
    where squareOfSum = (^ 2) $ sum [1..100]
          sumOfSquares = sum $ [x ^ 2 | x <- [1..100]]

main = print diff
