max' :: (Ord a) => a -> (a -> a)
max' a b
	| a >= b = a
	| otherwise = b

multThree x y z = x * y * z

divideByTen = (/10)

subtract4 = (subtract 4)

-- apply twice

-- applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = [][1,2,3
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

largestDivisible :: (Integral a) => a
largestDivisible = head (filter pred [100000,99999..])
	where pred x = x `mod` 1892 == 0



p 58
