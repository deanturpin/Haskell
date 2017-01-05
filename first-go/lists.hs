-- concatenation
listStuff = [1,2,3] ++ [4,5,6] ++ [7,8,9]

-- prepend
consOperator = 'a':"bcd"
consOperator2 = 1:2:3:[]

-- index
index x = [1,2,3,4,5]!!x

-- comparison
comparePair x y = x == y

-- head and tail
getHead x = head x
getTail x = tail x

-- last and front
getLast x = last x
getInit x = init x

sumAndProduct x = product x

main = do
	print listStuff
	print consOperator
	print consOperator2
	print (index 4)
	print (comparePair 5 5)
	print (comparePair "yes" "no")
	print (comparePair [1,2] [2,3])
	print (getHead [1,2,3,4,5])
	print (getTail [1,2,3,4,5])
	print (getLast [1,2,3,4,5])
	print (getInit [1,2,3,4,5])

	-- length and null
	print "length and null"
	print (length [1,2,3,4,5,6])
	print (null [])
	print (reverse "hello")

	-- take and drop
	print (take 2 "blah")
	print (drop 2 "blah")

	-- min/max
	print (minimum [2,3])
	print (maximum [2,3])

	-- sum/product
	print (sum [2,3])
	print (product [2,3])

	-- presence
	print (elem 3 [1,2,3])

	-- Texas ranges
	print [1..20]
	print ['a'..'z']

	-- with a step
	print ['a','c'..'z']

	-- infinite lists
	print (take 10 (cycle [1,5..20]))
	print (take 10 (repeat 7))
	print (replicate 3 '$')
