getFirstElement :: ([String], Int) -> [String]
getFirstElement (first, second) = first

getSecondElement :: ([String], Int) -> Int
getSecondElement (first, second) = second

doOp :: [String] -> [(String, Int)]
doOp lista = doOpAux lista []

doOpAux :: [String] -> [(String, Int)] -> [(String, Int)]
doOpAux lista listaTupla = if length lista == 0 then listaTupla else [((head lista, (getSecondElement (countAndFilter (head lista) lista))))] ++  doOpAux (getFirstElement (countAndFilter (head lista) lista)) listaTupla

countAndFilter :: String -> [String] -> ([String], Int)
countAndFilter string lista = countAndFilterAux string lista ([], 0)

countAndFilterAux :: String -> [String] -> ([String], Int) -> ([String], Int)
countAndFilterAux string lista1 (lista2, count) = if (length lista1) == 0 then (lista2, count) else if string == head lista1 then countAndFilterAux string (tail lista1) (lista2, count+1) else countAndFilterAux string (tail lista1) (lista2 ++ [head lista1], count)

main = do
  lista <- getLine
  print(doOp (read lista))