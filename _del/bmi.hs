-- bmbmiTell :: ( RealFloat a ) = >

bmiCalc :: Double -> Double -> Double
bmiCalc height weight = weight / height^2

bmiTell weight height
	| bmi <= 18.5 = "ONE"
	| bmi <= 25.0 = "TWO"
	| bmi <= 30.0 = "THREE"
	| otherwise = "FOUR"
	where bmi = weight / height^2


main = do
	-- print (bmiTell 24)
	print (bmiTell 1.82 76.7)
