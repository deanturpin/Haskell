#!/usr/bin/runhaskell

import Test.QuickCheck

-- Function to test
indent = ("    " ++)

-- Quick check rule
prop_indent = indent "" == "    "

main = quickCheck prop_indent
