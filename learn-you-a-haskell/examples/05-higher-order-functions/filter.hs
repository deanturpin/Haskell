#!/usr/bin/runhaskell

filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter p xs

main = do
  putStrLn "--- filter ---"
  print $ filter' (== 4) [1..10]
  print $ filter (<1.5) (take 10 [1.1, 1.2..])
  print $ filter even [1..20]
