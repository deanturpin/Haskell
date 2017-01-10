#!/usr/bin/runhaskell

-- Entry point
main = do
  print "ranges"
  print [1..20]
  print ['a'..'z']
  print [1,3..10]
  print [10,7..0]
  print [1.1,2.3..10]

  -- todo: cycle and take
