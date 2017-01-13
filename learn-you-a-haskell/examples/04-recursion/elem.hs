#!/usr/bin/runhaskell

elem' a [] = False
elem' a (x:xs)
  | a == x = True
  | otherwise = elem a xs

main = do
  putStrLn "--- recursion - elem ---"

  print $ elem 4 [1..10]
