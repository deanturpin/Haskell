result = []

-- unique :: [a] -> [a]
unique [] = []
unique (x:xs)
	| not (elem x result) = x:unique xs
	| otherwise = unique xs
	

-- the ++ function is much more expensive than : , so we usually use right folds when we’re building up new lists from a list.
