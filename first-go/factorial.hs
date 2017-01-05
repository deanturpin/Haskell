-- goes wrong after 32
-- default type is Int
factorial1 :: Int -> Int
factorial1 n = product [1..n]

-- unbounded integer
factorial2 :: Integer -> Integer
factorial2 n = product [1..n]

-- using pattern matching
factorial3 :: ( Integral a ) => a -> a
factorial3 0 = 1
factorial3 n = n * factorial3 ( n - 1)

bounded :: Int
bounded = 50

unBounded :: Integer
unBounded = 50

-- single precision
float :: Float
float = 1.5

-- double precision
double :: Double
double = 1.5

-- circumference with floats
circumference :: Float -> Float
circumference r = 2 * pi * r

-- circumference with doubles
circumference' :: Double -> Double
circumference' r = 2 * pi * r

main = do
	print "factorial"
	print (factorial1 bounded)
	print (factorial2 unBounded)
	print "circumference"
	print (circumference float)
	print (circumference' double)
	
	-- three flavours of factorial
	print (factorial1 50)
	print (factorial2 50)
	print (factorial3 50)
