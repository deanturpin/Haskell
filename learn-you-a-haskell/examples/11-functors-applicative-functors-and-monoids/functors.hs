#!/usr/bin/runhaskell

-- Functors are things that can be mapped over, like lists, Maybes, trees, and
-- such. In Haskell, they're described by the typeclass Functor, which has only
-- one typeclass method, namely fmap, which has a type of fmap :: (a -> b) -> f
-- a -> f b. It says: give me a function that takes an a and returns a b and a
-- box with an a (or several of them) inside it and I'll give you a box with a b
-- (or several of them) inside it. It kind of applies the function to the
-- element inside the box.
--
import Data.Char
import Data.List

main = do
  line <- fmap (intersperse '-' . reverse . map toUpper) getLine  
  putStrLn line  


-- main = do
  -- putStrLn "--- functors ---"
  -- print $ intersperse '-' "bah"
