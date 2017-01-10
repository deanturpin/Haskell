#!/usr/bin/runhaskell

doubleMe x = x * 2
doubleUs x y = x*2 + y*2
doubleUs2 x y = (doubleMe x) + (doubleMe y)

main = do
  print "double me"
  print $ doubleMe 5
  print $ doubleUs 5 6
  print $ doubleUs2 7 10
