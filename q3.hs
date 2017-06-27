soma :: Int -> Int -> Int
soma x y = x + y

ehPrimo :: Int -> Bool
ehPrimo k = null [ x | x <- [2..k - 1], k `mod`x  == 0]

ehPrimoECasado :: Int -> String
ehPrimoECasado q = if (ehPrimo q && ehPrimo (soma q 2)) then "PRIMO CASADO!" else if ehPrimo q then "PRIMO!" else "NAO PRIMO!"

main = do
  input <- getLine
  print(ehPrimoECasado(read input))