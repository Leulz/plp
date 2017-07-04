--filterEqualElements :: [Int] -> [Int]
--filterEqualElements lista = filterEqualElementsAux lista []

--filterEqualElementsAux :: [Int] -> [Int] -> [Int]
--filterEqualElementsAux lista1 lista2 = if (length lista1) == 0 then lista2 else if (elem (head lista1)  (tail lista1)) then filterEqualElementsAux (tail lista1) lista2 else filterEqualElementsAux (tail lista1) lista2 ++ [(head lista1)]

union :: [Int] -> [Int] -> [Int]
union lista1 lista2 = if (length lista2) == 0 then lista1 else if (elem (head lista2) lista1) then union lista1 (tail lista2) else union (lista1 ++ [(head lista2)]) (tail lista2)

main = do
	lista1 <- getLine
	lista2 <- getLine

	print (union (read lista1) (read lista2))