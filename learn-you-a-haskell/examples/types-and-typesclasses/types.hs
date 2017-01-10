#!/usr/bin/runhaskell

-- all triangles
range = [1..50]
triangles = [(a,b,c) | a <- range, b <- range, c <- range]
triangles' = [(a,b,c) | a <- range, b <- range, c <- range, a^2 * b^2 == c^2]
triangles'' =
  [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]

main = do
  print "triangles"
  print $ length triangles
  print $ length triangles'
  print $ length triangles'
  print $ triangles''
