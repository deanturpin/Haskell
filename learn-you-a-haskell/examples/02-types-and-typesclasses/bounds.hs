#!/usr/bin/runhaskell

main = do
  putStrLn "--- Bounds ---\n"
  print (minBound :: Int, maxBound :: Int)
  print (minBound :: Bool, maxBound :: Bool)
  print (minBound :: (Bool, Int, Char))
  print (maxBound :: (Bool, Int, Char))
  print $ 1.1 + fromIntegral(length [1,2,3])
