sum_divisors :: Int -> Bool
sum_divisors n = sum [x | x <- [1..(n-1)], n `rem` x == 0] == n

main = do
	input <- getLine
	print(sum_divisors (read input))
