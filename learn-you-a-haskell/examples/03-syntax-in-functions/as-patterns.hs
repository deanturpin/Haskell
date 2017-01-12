#!/usr/bin/runhaskell

firstLetter "" = "empty"
firstLetter all@(x:_) = "The first letter of " ++ all ++ " is " ++ x:[]

bmiTell b
  | b < 2 = "one"
  | b < 3 = "two"
  | b < 4 = "three"
  | otherwise = "blah"

bmiTell' w h
  | w / h^2 < 10 = "one"
  | w / h^2 < 20 = "two"
  | w / h^2 < 30 = "three"
  | otherwise = "blah"

bmiTell'' w h
  | bmi < low = "one"
  | bmi < mid = "two"
  | bmi < high = "three"
  | otherwise = "blah"
  where
      bmi = w / h^2
      (low,mid,high) = (10,20,30)

max' a b | a > b = a | otherwise = b

-- return initials
intials firstname lastname = [f] ++ " " ++ [l]
    where
      (f:_) = firstname
      (l:_) = lastname

main = do
  putStrLn "--- as patterns ---\n"
  putStrLn $ firstLetter "ljsd"
  print $ bmiTell 1
  print $ bmiTell 2
  print $ bmiTell 3
  print $ bmiTell 4
  print $ bmiTell' 4 5
  print $ max' 6 5
  print $ bmiTell'' 40 5
  putStrLn $ intials "mr" "bean"
