areaOfACircle r = pi * r ^ 2
volumeOfACylinder h r = h * areaOfACircle r

main = do
	print (volumeOfACylinder 8 9)
