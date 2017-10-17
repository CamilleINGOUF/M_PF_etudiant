main = do
  {-print $'Z' < 'a'
  print $"abc" <= "ab"
  print $"abs" >= "ac"
  print $1 + 2 * 3
  print $5.0 - 4.2 / 2.1
  print $3 > 4 || 5 < 6 && not (7 /= 8)
  print $if 6 < 10 then 6.0 else 10.0
-}
  {-
4+2 -> Num
(4::Int)+2 -> Int 
-}


 
  print $[1,2,3] !! ([1,2,3] !! 1)
  print $head [1,2,3]
  print $"a":["b","c"]
  print $"abc" ++ "d"
  print $tail "abc" ++ "d"
  print $head "abc" : "d"
  print $([1,2,3] !! 2 : []) ++ [3,4]
  print $[3,2] ++ [1,2,3] !! head [1,2] : []
