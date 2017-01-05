-- maximum
maximum' :: [Int] -> Int
maximum' [] =  error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

--replicate
replicate' :: Int -> Int -> [Int]
replicate' value 0 = []
replicate' value count = value:replicate' value (count -1) 

-- replicate - handle negatives
replicate'' :: Int -> Int -> [Int]
replicate'' value count
	| count <= 0 = []
	| otherwise = value:replicate'' value (count-1)

-- reverse
-- reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- repeat
repeat' :: a -> [a]
repeat' x = x:repeat' x

-- zip
zip' :: [a] -> [b] -> [(a,b)]
-- zip' _ [] = []
-- zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip xs ys 

-- elem
elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
	| a == x = True
	| otherwise = elem a xs
