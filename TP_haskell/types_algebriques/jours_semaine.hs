data Jour = Lundi | Mardi | Mercredi | Jeudi | Vendredi | Samedi | Dimanche deriving(Eq)

estWeekend:: Jour -> Bool
estWeekend j = j == Samedi || j == Dimanche

compterOuvrables::[Jour] -> Int
compterOuvrables = length.(filter (not.estWeekend))

main = do
  print $estWeekend Dimanche
  print $compterOuvrables [Lundi,Mardi,Dimanche,Lundi]
