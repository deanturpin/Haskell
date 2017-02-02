#!/usr/bin/runhaskell

import Data.List

packets = [2,1,1,1,2,3,1,2,2,2,0,0,2,0,3,1,1,2,0,2,0,0,0,0,2,1,1,1,1,3,2,1,0,0,2,2,2,2,3,1,0,1,1,2,1,2,1,0,0,1]

packets' = [[1,2,19,21,18],[2,6,4,15,7],[3,17,25,5,7],[4,31,27,18,19],[5,26,3,4,14],[6,13,1,13,1],[7,12,12,29,19],[8,21,8,16,17],[9,9,5,20,19],[10,7,20,12,31],[11,30,5,28,3],[12,4,23,25,5],[13,9,14,28,24],[14,9,28,27,23],[15,14,0,29,21],[16,22,13,13,24],[17,11,13,23,1],[18,18,21,19,2],[19,19,26,2,2],[20,17,28,7,9]]

-- Histrogram of simple list
histogram xs = [ (head x, length x) | x <- list ]
  where list = group . sort $ xs

-- Histogram of list of lists
histogram' xs = [ (head x, length x) | x <- list ]
  where
    list = group (sort extract)
    extract = [ y!!2 | y <- xs]

-- Convert list of pairs to a printable string
histogramToString xs
    | xs == [] = ""
    | otherwise = bar ++ "\n" ++ remainder
  where
    bar = replicate binSize '-' ++ "| " ++ show binSize
    binSize = snd (head xs)
    remainder =  (histogramToString (tail xs))

main = do

  putStrLn "Histogram of simple list"
  putStrLn (histogramToString (histogram packets))

  putStrLn "Histogram of list of lists"
  putStrLn (histogramToString (histogram' packets'))
