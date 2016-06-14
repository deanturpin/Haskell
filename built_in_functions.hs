multiply x y = x * y

main = do

	print "prefix"
	print (succ 5)
	print (truncate 6.59)
	print (round 6.59)
	print (sqrt 2)
	print (pi)
	print (not (5 < 3))
	print (gcd 21 14)
	print (min 4 5)
	print (max 4 5)
	-- print (:t 21)

	print "infix"
	print (4 * 5)
	print (4.0 * 5)

	print "back ticks"
	print (multiply 4.0 5)
	print (4.0 `multiply` 5)
