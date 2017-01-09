-- initials :: String -> String -> String
initials firstname lastname = [ f ] ++ " . " ++ [ l ] ++ " . "
	where
		( f : _ ) = firstname
		( l : _ ) = lastname

-- simplify
initials' (f:_) (l:_) = [ f ] ++ " . " ++ [ l ] ++ " . "

-- calcBmis :: [(t,t)] -> [t]
calcBmis xs = [bmi w h | (w, h) <- xs]
	where bmi weight height = weight / height ^ 2
