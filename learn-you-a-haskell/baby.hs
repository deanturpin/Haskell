#!/usr/bin/runhaskell

-- Basic doublers
doubleMe x = x * 2
doubleUs x y = x*2 + y*2
doubleUs2 x y = doubleMe x + doubleMe y

-- Conditiional doublers
doubleSmallNumber x =
  if x > 100
  then x
  else x*2

doubleSmallNumber' x =
  (if x > 100
  then x
  else x*2) + 1

-- Apostrphe is a valid character in a function name
conanO'Brian = "Hello, my name is Conan"

-- 
main = do
  print "double me"
  print $ doubleMe 5
  print $ doubleUs 5 6
  print $ doubleUs2 7 10
  print $ doubleUs2 7 10 + doubleMe 4
  print "double small"
  print $ doubleSmallNumber 4
  print "double large"
  print $ doubleSmallNumber 400
  print $ doubleSmallNumber' 400
  print "function naming and expressions"
  print $ conanO'Brian
