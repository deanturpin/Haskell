#!/usr/bin/runhaskell

head' :: [a] -> a
head' [] = error "empty list"
head' (x:_) = x

iamempty = []
iamfull = reverse [1,2,3]

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y  

-- tell :: (Show a) => [a] -> String
-- tell [] = "The list is empty"
-- tell _ = "Not empty"
-- tell (x:[]) = "One element: " ++ show x
-- tell (x:y:[]) = "Two elements: " ++ show x ++ " " ++ show y
-- tell (_:_:_:[]) = "Loads of elements!"

main = do
  putStrLn "--- pattern matching 2 ---\n"
  --print (head' [])
  -- print $ head' [1,2,3]
  -- print (head' iamempty)
  -- putStrLn (head' iamempty)
  -- putStrLn (head' iamfull)
  print $ show $ tell []
