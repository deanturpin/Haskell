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
```

> So when trying to think of a recursive way to solve a problem, try to think of
> when a recursive solution doesn't apply and see if you can use that as an edge
> case, think about identities and think about whether you'll break apart the
> parameters of the function (for instance, lists are usually broken into a head
> and a tail via pattern matching) and on which part you'll use the recursive
> call.

> Haskell functions can take functions as parameters and return functions as
> return values. A function that does either of those is called a higher order
> function.

> Putting a space between two things is simply function application.

> Simply speaking, if we call a function with too few parameters, we get back a
> partially applied function, meaning a function that takes as many parameters as
> we left out. Using partial application (calling functions with too few
> parameters, if you will) is a neat way to create functions on the fly so we can
> pass them to another function or to seed them with some data.

```haskell
print $ zipwith' (+) [1..10] [10..20]

-- flip
flip' f = g
  where g x y = f y x
```

# map
> map takes a function and a list and applies that function to every element in
> the list, producing a new list. 

```haskell
-- map
map (^2) [1..10]

-- filter
filter (<1.5) (take 10 [1.1, 1.2..])
filter even [1..20]

-- takeWhile
takeWhile (>0) (filter odd (map (+ 2) [10,9..]))
```
