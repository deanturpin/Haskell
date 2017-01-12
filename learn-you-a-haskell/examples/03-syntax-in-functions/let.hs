#!/usr/bin/runhaskell

-- use let
cylinder r h =
  let
    sideArea = 2 * pi * r * h
    topArea = pi * r^2
  in
    sideArea + 2 * topArea

-- using where
cylinder' r h =
  sideArea + 2 * topArea
  where
    sideArea = 2 * pi * r * h
    topArea = pi * r^2

main = do
  putStrLn "--- let bindings ---\n"
  print $ cylinder 4 5
  print $ cylinder' 4 5

  -- introduce functions in a local scope
  print [let square x = x*x in (square 1, square 2, square 3)]

  print [let foo = "bar"; blah = "rah" in foo ++ blah]
