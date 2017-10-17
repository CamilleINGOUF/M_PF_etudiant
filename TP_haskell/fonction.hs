l1 = [37..42]

main = do
  print $zip first second
  print first
  print second
  where
    first = take ((length l1) `div` 2) l1
    second = drop ((length l1) `div` 2) l1


