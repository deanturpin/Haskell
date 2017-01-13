#!/usr/bin/runhaskell

multThree x y z = x * y * z
multTwo = multThree 3
multOne = multTwo 2

compareHundred = compare 100
divideByTen = (/10)

isUpper = (`elem` ['A'..'Z'])

-- passing functions as params
applyTwice f x = f $ f x

-- zipwith
-- if either of the lists are empty return an empty list
zipwith' _ [] _ = []
zipwith' _ _ [] = []
-- apply the function
zipwith' f (x:xs) (y:ys) = f x y : zipwith' f xs ys

swap (x, y) = (y, x)

-- flip
flip' f = g
  where g x y = f y x

flip'' f x y = f y x

front x y = x

main = do
  print "curry"
  print $ multThree 1 2 3
  print $ (((multThree 1) 2) 3)
  print $ multOne 1
  print $ compareHundred 10
  print $ divideByTen 50
  print $ isUpper 'A'

  -- apply twice
  print $ applyTwice (+3) 3
  print $ applyTwice (++ "bag") "flag" 

  -- zipwith
  print $ zipwith' (+) [1..10] [10..20]
  print $ zipwith' (*) [1..10] [10..20]
  print $ zipwith' max [5,7..] [10..20]
  print $ zipwith' (*) (replicate 5 2) [1..]

  -- flip
  -- flip' :: (a -> b -> c) -> (b -> a -> c)  
  print $ flip' front 4 5
  print $ flip'' front 4 5

  print $ flip'' zip "yehyehyeh" [1..10]
