#!/usr/bin/runhaskell

seven 7 = "LUCKY!"
seven _ = "Sorry"

factorial 0 = 1
factorial n = n * factorial (n - 1)

-- tuple addition
addVectors a b = (fst a + fst b, snd a + snd b)
addVectors' (x1,y1) (x2,y2) = (x1 + x2, y1 + y2)

-- tuple accessor
first (x, _, _) = x
second (_, x, _) = x
thrid (_, _, x) = x

main = do
  putStrLn "--- pattern matching ---\n"
  putStrLn $ seven 7
  putStrLn $ seven 0
  putStrLn $ "factorial 5 " ++ (show $ factorial 5)

  print $ addVectors (1,2) (2,3)
  putStrLn $ show $ addVectors' (1,2) (2,3)

  print $ first (1, 2, 3)
  print $ second (1, 2, 3)
  print $ thrid (1, 2, 3)

  -- pattern matching in list comprehensions
  print [a + b | (a, b) <- [(1,2), (2,3), (4,5)]]
