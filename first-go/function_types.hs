func1 :: Int -> Int -> Int -> Int
func1 x y z = x * y * z

string = "WhatTime is IT now?"

removeLowercase :: [Char]
removeLowercase = [c | c <- string, elem c ['A'..'Z']]

{-
main = do
	func1 1 2 3
-}
