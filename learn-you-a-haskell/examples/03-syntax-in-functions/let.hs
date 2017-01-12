#!/usr/bin/runhaskell

-- length
length' [] = 0
length' (x:xs) = 1 + length' xs

-- sum
sum' [] = 0
sum' (x:xs) = x + sum' xs

main = do
  putStrLn "--- length ---\n"
  print $ length' []
  print $ length' [1,2,3]
  print $ length' "ham"
  print $ sum [1..10]
