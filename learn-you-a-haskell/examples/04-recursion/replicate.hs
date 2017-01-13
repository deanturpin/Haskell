#!/usr/bin/runhaskell

replicate' n x
  | n <= 0 = []
  | otherwise = x:replicate' (n-1) x

-- take
take' n _
  | n <= 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

-- reverse
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- zip
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' xs ys

-- zip and pad with zero
zip'' [] [] = []
zip'' (x:xs) [] = (x,0) : zip'' xs []
zip'' [] (x:xs) = (x,0) : zip'' [] xs
zip'' (x:xs) (y:ys) = (x,y) : zip'' xs ys

main = do
  putStrLn "--- recursion - replicate ---"
  print $ replicate' 4 5
  print $ take' 0 [1..10]
  print $ take' 11 [-10..10]
  print $ take' 1 [1]
  print $ reverse' [1..10]
  print $ zip' (reverse [1..10]) [4..6]
  print $ zip'' (reverse [1..10]) [4..6]
