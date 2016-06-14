-- order doesn't matter 
calcSomething x y = areaSquare x * y

-- rectangle
areaRect l w = l * w

-- square
areaSquare s = areaRect s s

main = do
	print "area of a square"
	print (calcSomething 4 5)
