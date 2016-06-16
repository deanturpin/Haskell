-- power 207

lowGear = 34 / 28 :: Rational	-- going uphill
highGear = 50 / 11 :: Rational	-- full gas
diameter = 7 / 10 :: Rational	-- in fractions of a metre
radius = diameter / 2
crank = 172 / 1000 :: Rational
cadence = 90 -- per second

-- use approximation of pi to keep everything rational
pi' = 355/113 :: Rational

-- circumference of a circle
circumference r = 2 * pi * r
	where pi = pi' -- approximate

distanceTravelledPerRotation :: Rational -> Rational
distanceTravelledPerRotation ratio = ratio * circumference radius

main = do
	print diameter
	print crank
	print (distanceTravelledPerRotation lowGear)
	print (distanceTravelledPerRotation highGear)
