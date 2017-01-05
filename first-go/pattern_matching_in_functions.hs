sayMe :: ( Integral a ) => a -> String
sayMe 1 = " One ! "
sayMe 2 = " Two ! "
sayMe 3 = " Three ! "
sayMe 4 = " Four ! "
sayMe 5 = " Five ! "
sayMe x = " Not between 1 and 5 "

charName :: Char -> String
charName 'a' = "Ken"
charName 'b' = "Morris"
charName 'c' = "Alan"
charName x = "Gary"

-- pattern matching with tuples
addVectors :: ( Num a ) => (a , a ) -> (a , a ) -> (a , a )
-- basic implemenation
-- addVectors a b = ( fst a + fst b , snd a + snd b )
-- neater
addVectors ( x1 , y1 ) ( x2 , y2 ) = ( x1 + x2 , y1 + y2 )

-- extending first and second for tuples
first :: (a , b , c ) -> a
first (x , _ , _ ) = x
second :: (a , b , c ) -> b
second (_ , y , _ ) = y
third :: (a , b , c ) -> c
third (_ , _ , z ) = z

-- rewriting head
head' :: [a] -> a
head' xs = case xs of [] -> error "empty list, bro!"
                      (x:_) -> x

-- rewriting length
length' :: ( Num b ) => [ a ] -> b
length' [] = 0
length' ( _ : xs ) = 1 + length' xs

-- rewriting sum
-- sum' :: ( Num a ) => [ a ] -> a
sum' [] = 0
sum' ( x : xs ) = x + sum' xs

main = do
	print (sayMe 4)
	print (sayMe 5)
	print (sayMe 6)
	print (charName 'a')
	print (charName 'g')
	print (addVectors (1,2) (3,4))
	print (first (1,3,4))
	print (second (1,False,4))
	print (third (True,3,'a'))
	-- error "just an error"
	print (head' [1,2,3,4,5])
	print (length' [1,2,3,4,5])
	print (sum' [1,2,3,4,5])
