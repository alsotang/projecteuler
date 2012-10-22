num = maximum [ product' | x <- [100..999], y <- [100..999], let product' = x * y,
    let s = show product', s == reverse s]

main = print num
