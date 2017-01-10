#!/usr/bin/runhaskell

-- Basic lists
lostNumbers = [4,8,15,16,23,42]
lostNumbers' = ['l','o','s','t']
badger = ['b','r','i','n','g'] ++ " " ++ ['i','t']

-- Entry point
main = do
  print lostNumbers
  print lostNumbers'
  print badger
