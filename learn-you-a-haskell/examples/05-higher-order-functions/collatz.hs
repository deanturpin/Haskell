#!/usr/bin/runhaskell


chain 1 = [1]
chain n
  | even n = n : chain (n `div` 2)
  | otherwise = n : chain (n*3 + 1)

numLongChains = length (filter isLong (map chain [1..1000]))
  where isLong xs = length xs > 15

main = do
  putStrLn "--- Collatz ---"
  print (chain 6)
  print (chain 10)
  print (numLongChains)
  print (take 10 [1..])
