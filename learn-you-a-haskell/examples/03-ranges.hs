#!/usr/bin/runhaskell

-- Entry point
main = do
  print "ranges"
  print [1..20]
  print ['a'..'z']
  print [1,3..10]
  print [10,7..0]
  print [1.1,2.3..3]

  -- cycle and take
  print $ take 10 (cycle [1..3])
  print $ take 50 (cycle "blah ")

  -- repeat
  print $ take 5 $ repeat "aa"
  print $ take 5 $ repeat "a"
  print $ take 5 $ repeat 'a'

  -- replicate
  print $ replicate 3 10
