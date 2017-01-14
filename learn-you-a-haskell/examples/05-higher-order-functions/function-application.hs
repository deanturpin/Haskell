#!/usr/bin/runhaskell

-- point free style
fn x = ceiling (negate (tan (cos (max 50 x))))

-- point style
fn' = ceiling . negate . tan . cos . max 50

main = do
  putStrLn "--- function application ---"
  print $ map ($ 3) [(4+), (10*), (^2), sqrt]
  print $ map ((*3) . negate) [1..10]
  print $ map (\x -> (-x)) [1..10]
  print $ map (\xs -> negate $ sum $ tail xs) [[1..5],[6..9],[10..20]]
  print $ map (negate . sum . tail) [[1..5],[6..9],[10..20]]
  print . sum . map (*2) $ [1..10]

  print $ fn 10
  print $ fn' 10

  -- In the section about maps and filters, we solved a problem of finding the
  -- sum of all odd squares that are smaller than 10,000. Here's what the
  -- solution looks like when put into a function.

  print (sum (takeWhile (<10000) (map (^2) (filter odd [1..]))))
  print . sum . takeWhile (<10000) . map (^2) . filter odd $ [1..]
