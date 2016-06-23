data Person = Person {
	first :: Int,
	second :: Float
	} deriving ( Show )

main = do print $ Person {first=0, second=0.2}
