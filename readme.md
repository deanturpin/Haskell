```
In purely functional programming you don't tell the computer what to do as such
but rather you tell it what stuff is. The factorial of a number is the product
of all the numbers from 1 to that number, the sum of a list of numbers is the
first number plus the sum of all the other numbers, and so on. You express that
in the form of functions. You also can't set a variable to something and then
set it to something else later. If you say that a is 5, you can't say it's
something else later because you just said it was 5. What are you, some kind of
liar? So in purely functional languages, a function has no side-effects. 
```

- referential transparency
- Haskell is lazy
- infinite data structures
- statically typed

See my run of [Learn You A Haskell](learn-you-a-haskell).

# Functional resources
- [Learn You A Haskell](http://learnyouahaskell.com/chapters)
- [Monads and Gonads](https://www.youtube.com/watch?v=b0EF0VTs9Dc)
- [Haskell is useless](https://www.youtube.com/watch?v=iSmkqocn0oQ)
- [Tail recursion optimisation](https://www.quora.com/What-is-tail-recursion-Why-is-it-so-bad)

# Key features
```haskell
bmiTell'' w h
  | bmi < low = "one"
  | bmi < mid = "two"
  | bmi < high = "three"
  | otherwise = "blah"
  where
      bmi = w / h^2
      (low,mid,high) = (10,20,30)

max' a b | a > b = a | otherwise = b
```
