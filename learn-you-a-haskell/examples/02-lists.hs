#!/usr/bin/runhaskell

-- Basic lists
lostNumbers = [4,8,15,16,23,42]
lostNumbers' = ['l','o','s','t']

-- Operators
badger = ['b','r','i','n','g'] ++ " " ++ ['i','t'] -- expensive
badger' = 'a':['b','r','i','n','g'] -- instant
badger'' = 1:2:3:4:[]

-- Lists of lists
animals = [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]

-- Entry point
main = do
  print lostNumbers
  print lostNumbers'
  print badger
  print badger'
  print badger''

  -- Indexing
  print $ "length"
  print $ length badger
  print $ badger !! 1
  print animals
