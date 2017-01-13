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
- [Learn You A Haskell](http://learnyouahaskell.com/chapters) (book)
- [Monads and Gonads](https://www.youtube.com/watch?v=b0EF0VTs9Dc) (video) 
- [Haskell is useless](https://www.youtube.com/watch?v=iSmkqocn0oQ) (video)
- [Tail recursion optimisation](https://www.quora.com/What-is-tail-recursion-Why-is-it-so-bad) (article)

# Key features
```haskell
-- let <bindings> in <expression>

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

4 * (if 10 > 5 then 10 else 0) + 2  

4 * (let a = 9 in a + 1) + 2  

[let square x = x * x in (square 5, square 3, square 2)]  

 let boot x y z = x * y + z in boot 3 4 2 

describeList xs = "The list is " ++ case xs of [] -> "empty."  
                                               [x] -> "a singleton list."   
											   xs -> "a longer list."  

describeList xs = "The list is " ++ what xs  
    where
			what [] = "empty."  
			what [x] = "a singleton list."  
			what xs = "a longer list." 

-- Maximum

maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs)
  | x > maxTail = x
  | otherwise = maxTail
  where maxTail = maximum' xs

maximum'' [] = error "empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

-- Replicate

replicate' n x
  | n <= 0 = []
  | otherwise = x:replicate' (n-1) x

-- reverse

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- zip
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = [(x,y)] ++ zip' xs ys
```
