```haskell
let <bindings> in <expression>

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
```

```haskell
4 * (if 10 > 5 then 10 else 0) + 2  
```
