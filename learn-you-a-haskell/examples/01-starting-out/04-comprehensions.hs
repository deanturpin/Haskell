#!/usr/bin/runhaskell

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

nouns = ["hobo","frog","pope"]  
adjectives = ["lazy","grouchy","scheming"]  

-- rewrite length
-- replace every item with a 1 and then sum them
length' xs = sum [ 1 | _ <- xs ]

-- string processing
removeLowercase xs = [ c | c <- xs, elem c ['a'..'z'] ]

-- nested lists
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]

-- Entry point
main = do
  print "comprehensions"
  print [x*2 | x <- [1..10]]
  print [x*2 | x <- [1..10], x*2 >= 12]
  print [x | x <- [1..100], x `mod` 7 == 3]
  print $ boomBangs [1..20]
  print [ x | x <- [1..20], x /= 10, x /= 11 ]
  print [ x * y | x <- [1,2], y <- [10,100], x*y >= 100 ]
  print [ a ++ " " ++ n | a <- adjectives, n <- nouns ]
  print $ length' [1..10]
  print $ removeLowercase $ ['a'..'e'] ++ ['A'..'Z']

  -- nested comprehension
  print [[x | x <- xs, even x] | xs <- xxs]
