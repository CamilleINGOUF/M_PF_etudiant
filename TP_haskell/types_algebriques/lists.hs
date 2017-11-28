data Liste = Nil | Cons Int Liste
data ListeA a = NilA | ConsA a (ListeA a) deriving (Show)

showListe :: Liste -> String
showListe Nil = ""
showListe (Cons i l) = show i ++ " " ++ showListe l

convertListe :: Liste -> [Int]
convertListe Nil = []
convertListe (Cons i li) = i : (convertListe li)

sumListe :: Liste -> Int
sumListe Nil = 0
sumListe (Cons i l) = i + (sumListe l)


-- ListaA --

showListeA :: Show a => ListeA a -> String
showListeA NilA = ""
showListeA (ConsA i l) = show i ++ " " ++ showListeA l

convertListeA :: ListeA a -> [a]
convertListeA NilA = []
convertListeA (ConsA i li) = i : (convertListeA li)

sumListeA :: Num a => ListeA a -> a
sumListeA NilA = 0
sumListeA (ConsA i l) = i + (sumListeA l)

main = do
  print $showListeA l
  print $convertListeA l
  print $sumListeA l
  where l = ConsA 1 (ConsA 2 (ConsA 3 NilA))
  
