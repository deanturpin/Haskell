#!/usr/bin/runhaskell

factorial n = product [1..n]

-- circumference :: Float -> Float
circumference :: Double -> Double
circumference r = 2 * pi * r

-- Functions that have type variables are called polymorphic functions. The type
-- declaration of head states that it takes a list of any type and returns one
-- element of that type.

main = do
  putStrLn $ replicate 3 '#' ++ " Types\n"
  putStrLn $ show [factorial x | x <- [1..10]]
  print [product [1..x] | x <- [1..10]]
  print $ circumference 10
  print $ compare "hello" "lion"
  print $ compare 5 4
  putStrLn $ "hello " ++ show 3.4
  print $ read "5" + 4
  print $ read "[1,2,3]" ++ [5]
  print $ read "1" :: Int
