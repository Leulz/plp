doOp :: [Int] -> Int -> Int
doOp list index = if index == 1  then (head list) else doOp (tail list) (index - 1)



main = do
	inputList <- getLine
	index <- getLine
	print(doOp(read inputList) (read index))
