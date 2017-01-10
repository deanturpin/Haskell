#!/usr/bin/runhaskell

tups = ("this", 'a', 5)
pair = ("this", 'a')

main = do
  print "tuples"
  print $ tups:[("that",'b',6)]
  print $ fst pair
  print $ snd pair
  print $ fst (1,2)

  -- zip
  print $ zip [1..5] [6..20]
  print $ zip ['a'..'z'] [6..10]
  print $ zip [1..] ["I'm","the","badger"]
