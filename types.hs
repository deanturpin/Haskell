-- import Numeric

-- Machine-sized integers
i :: Int
i = -78

-- Arbitrary-precision integers
n :: Integer
n = 1234567890987654321987340982334987349872349874534

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

-- Booleans
b1, b2 :: Bool
b1 = True
b2 = False

-- Unicode characters
c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

-- Strings are lists of characters with special syntax
s :: String
s = "Hello, Haskell!"

r :: Rational
r = 1 / 100

-- single precision
f :: Float
f = 0.0

-- double precision
d :: Double
d = 0.0

main = do
	print i
	print n
	print reallyBig
	print b1
	print c3
	print r
	print (1 + r ^ 2)
	print f
	print d

-- Float
-- is a single precision floating point number.
-- Double
-- is a double precision floating point number.
-- Rational
-- is a fraction type, with no rounding
-- error. 
