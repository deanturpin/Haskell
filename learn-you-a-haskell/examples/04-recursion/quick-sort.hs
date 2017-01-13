#!/usr/bin/runhaskell

-- quicksort with let
quicksort [] = []
quicksort (x:xs) =
  let smaller = quicksort [a | a <- xs, a <= x]
      larger = quicksort [a | a <- xs, a > x]
  in smaller ++ [x] ++ larger

-- quicksort with where
quicksort' [] = []
quicksort' (x:xs) =
  smaller ++ [x] ++ larger
  where
      smaller = quicksort' [a | a <- xs, a <= x]
      larger = quicksort' [a | a <- xs, a > x]

-- quicksort inline
quicksort'' [] = []
quicksort'' (x:xs) =
  quicksort'' [a | a <- xs, a <= x]
    ++ [x]
      ++ quicksort'' [a | a <- xs, a > x]

main = do
  putStrLn "--- recursion - quicksort ---"
  print $ quicksort $ reverse [1..10] ++ [30,35..50]
  print $ quicksort' $ reverse [1..10] ++ [30,35..50]
  print $ quicksort'' $ reverse [1..10] ++ [30,35..50]
  print $ quicksort'' [a | a <- string, a /= ' ']
      where string = "the quick brown fox jumped over the lazy doglah"
