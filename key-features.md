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
```
