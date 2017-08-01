doOp :: Bool -> Bool -> Bool -> String -> Bool
doOp x y z op = if op=="AND" then x && y && z else x || y || z

main = do
	input1 <- getLine
	input2 <- getLine
	input3 <- getLine
	op <- getLine
	print(doOp (read input1) (read input2) (read input3) op)
