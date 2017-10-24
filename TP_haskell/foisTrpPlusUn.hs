--foisTroisPlusUn::Num a => a -> a
foisTrois = (\x -> 3 * x)
plusUn = (\x -> x + 1)
tout = plusUn . foisTrois

main = do
  print $tout 2
