#!/usr/bin/runhaskell

maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

maximum'' [] = error "empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

main = do
  putStrLn "--- recursion - maximum ---"
  print $ maximum' [1..10]
  print $ maximum' [9,8,7]
