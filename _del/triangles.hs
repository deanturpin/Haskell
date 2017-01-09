
range = [1..40]

triangles = 
	[
		(a, b, c) | 
		c <- range, b <- range, a <- range, 
		a^2 + b^2 == c^2, a + b + c == 24
	]

main = do
	if length triangles > 10
	then print (length triangles)
	else print (triangles)
