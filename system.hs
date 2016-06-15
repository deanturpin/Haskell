main = do
	-- basic types
	print (minBound :: Int)
	print (maxBound :: Int)
	print (minBound :: Char)
	print (maxBound :: Char)
	print (minBound :: Bool)
	print (maxBound :: Bool)
	-- complex types
	print (maxBound :: (Bool, Int, Char))

	-- error: unbounded
	-- print (maxBound :: Integer)

	-- polymorphic constants
	print (10 :: Int)
	print (10 :: Float)
	print (10 :: Double)
	-- print (10 :: Char)

