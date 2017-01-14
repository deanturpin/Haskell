#!/usr/bin/runhaskell

listoffunctions = map (*) [0..]

modlist list = map (+3) list
modlist' list = map (\x -> x + 3) list

main = do
  putStrLn "--- List of functions ---"
  print $ take 5 [((listoffunctions !! b) 20) | b <- [5..]]
  print (modlist [1..4])
  print (modlist' [1..4])
  print (zipWith (\a b -> a + b) [1..5] [6..10])
  print (zipWith (+) [1..5] [6..10])
  print (map (\(a,b) -> a + b) [(1,2),(2,3),(4,5)])
