#!/usr/bin/runhaskell

sum' list = (foldl (\y x -> y / x) 1 list)
sum'' list = (foldr (\acc x -> acc / x) 1 list)
sum''' = foldl (+) 0

-- elem with foldl
elem' y = foldl (\f x -> if x == y then True else f) False

-- map with foldr
map' f xs = foldr (\x acc -> f x : acc) [] xs

--------------------
-- implementing standard library functions with folds

-- maximum
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

-- reverse
reverse' = foldl (\acc x -> x:acc) []

-- product
-- product' = foldr1 (*)
product' :: (Num a) => [a] -> a  
product' = foldr1 (*) 

-- filter
filter' f = foldr (\x y -> if f x then x:y else y) []

-- head
head' = foldr1 (\x _ -> x)

-- last
last' = foldl1 (\_ x -> x)

-- reverse'' = foldl (flip (:)) []

main = do
  putStrLn "--- folds ---"
  print (sum' [1..10])
  print (sum'' [1..10])
  print (sum''' [1..10])
  putStrLn ("4 exists " ++ show (elem' 4 [1..10]))
  putStrLn ("40 exists " ++ show (elem' 40 [1..10]))
  print (map' (1+) [1..10])
  putStrLn ""

  print (maximum' [1..10])
  print (reverse' [1..20])
  print (product' [1..4])
  print (filter' (>10) [5..25])
  print (head' [1..10])
  print (last' [1..10])

  -- scanr scanl
  print (scanl (+) 0 [1..10])
  print (scanr (+) 0 [1..10])

  -- reverse using flip
  print (scanl (flip (:)) [] [3,2,1])

  print (sum (take 10 (map sqrt [1..])))
  print (length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1)
