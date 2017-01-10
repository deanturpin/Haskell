doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2

printSmallNumber x = if x < 10
then print "less than"
else print "ok now"

-- a function doesn't have to take parameters
-- can't begin with a capital letter
-- can use a single quote
blah'blah = "Blah blah"
