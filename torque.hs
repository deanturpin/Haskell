-- power 207W
-- Power = Work / time
-- Power = force * velocity
-- tau = radius * Force

-- wheel diameter
-- tyre depth
-- going uphill
-- wind resistance

lowGear = 34 / 28 :: Rational	-- going uphill
highGear = 50 / 11 :: Rational	-- full gas
diameter = 7 / 10 :: Rational	-- in fractions of a metre
radius = diameter / 2
crank = 172 / 1000 :: Rational
cadence = 90 / 1 :: Rational -- rotations per second

-- use approximation of pi to keep everything rational
pi' = 355/113 :: Rational

-- circumference of a circle
circumference r = 2 * pi * r
	where pi = pi' -- approximate

distanceTravelledPerRotation :: Rational -> Rational
distanceTravelledPerRotation ratio = ratio * circumference radius

kmph gear = 60 * cadence * (distanceTravelledPerRotation gear) / 1000

main = do
	print diameter
	print crank
	print cadence
	print (fromRational (kmph lowGear))
	print (fromRational (kmph highGear))
