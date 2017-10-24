doubler::Num a => a -> a
doubler = (2*)

fTete::Floating a => [a] -> a
fTete = (2*).(sqrt).(head)

main = do
  print $fTete [4..8]
