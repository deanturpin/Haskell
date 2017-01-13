#!/usr/bin/runhaskell

main = do
  putStrLn "--- take ---"
  print $ takeWhile (>0) (filter odd (map (+ 2) [10,9..]))
  print $ sum $ takeWhile (<10000) $ map (^2) [1,2..]
