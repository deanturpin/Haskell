#!/usr/bin/runhaskell

-- map takes a function and a list and applies that function to every element in
-- the list, producing a new list. 

main = do
  print "map"
  print $ map (^2) [1..10]
  print $ map (++ "!") ["the", "quick", "fox"]
  print $ map (replicate 3) [1,2,3]
  print $ map (max 3) [1,2]
  print $ map fst [(1,2),(2,3),(4,5)]
  print [fst a | a <- list] where list = reverse [(1,2),(2,3),(4,5)];
