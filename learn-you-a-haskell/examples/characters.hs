#!/usr/bin/runhaskell

import Data.Char
import Data.Ratio

blah = 'a'

main = do
  print $ map toUpper "asd"
  print $ toUpper $ chr 97
  print $ toRational 1.01
  print $ fromRational $ 12%13
  print $ 1%2 + 2%3
