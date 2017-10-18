ou:: Bool -> Bool -> Bool
ou False False = False
ou _ _ = True

ou'::Bool -> Bool -> Bool
ou' x y = if not y && not x 
          then False
          else True

ou''::Bool -> Bool -> Bool
ou'' x y
  | not x && not y = False
  | otherwise = True

et::Bool -> Bool -> Bool
et True True = True
et _ _ = False

et'::Bool -> Bool -> Bool
et' x y = if x && y
          then True
          else False

et''::Bool -> Bool -> Bool
et'' x y
  | x && y = True
  | otherwise = False

main = do
  print $ou False (0 > 1)
  print $ou' False False
  print $ou'' (1 == 1) (2 > 3)
  print $False `ou` True
  print $False `ou'` True
  print $False `ou'` True
  print $et False True
  print $et' True True
  print $et'' False True
  print $False `et` True
  print $False `et'` True
  print $True `et'` True
