import Data.Char

decaler :: Int -> Char -> Char
decaler n c
  | isLower c = chr(((diff + n) `mod` 26) + letterA)
  | otherwise = c
  where letterA = (ord 'a')
        diff = (ord c) - letterA

chiffreCesar :: Int -> String -> String
chiffreCesar n = map (decaler n)

compterOccurences :: Char -> String -> Int
--compterOccurences _ [] = 0
--compterOccurences c (x:xs)
--  | c == x = 1 + (compterOccurences c xs)
--  | otherwise = (compterOccurences c xs)
compterOccurences c = foldr (\x acc -> if x == c then acc+1 else acc) 0 

compterLettres :: String -> Int
--compterLettres [] = 0
--compterLettres (x:xs)
--  | isLower x = 1 + (compterLettres xs)
--  | otherwise = (compterLettres xs)
compterLettres = foldr (\x acc -> if isLower x then acc+1 else acc) 0

frequencesUk :: [Float]
frequencesUk = [0.082, 0.015, 0.028, 0.043, 0.127, 0.022, 0.02, 0.061, 0.07,
                0.002, 0.008, 0.04, 0.024, 0.067, 0.075, 0.019, 0.001, 0.06,
                0.063, 0.091, 0.028, 0.01, 0.024, 0.002, 0.02, 0.001]

calculerFrequences :: String -> [Float]
calculerFrequences s = [fromIntegral((compterOccurences x s)) / fromIntegral((compterLettres s)) | x <- ['a'..'z']]

calculerChi2 :: [Float] -> [Float] -> Float
calculerChi2 f1 f2 = foldr (\ x acc -> acc + ((((fst x) - (snd x)) * ((fst x) - (snd x))) / (snd x)) ) 0 couples
  where couples = (zip f1 f2)

casserCesar :: String -> [Float] -> Int
casserCesar s f =  snd (minimum (zip [calculerChi2 (calculerFrequences (chiffreCesar x s)) f | x <- [1..26]] [1..26]))

main = do
  print $chiffreCesar key cypher
  where key = casserCesar cypher frequencesUk
        cypher = chiffreCesar 12 "ftq qmsxq zqhqd xaef ea ygot fuyq me itqz tq egnyuffqp fa xqmdz ar ftq odai"
        text = "Anyone who reads Old and Middle English literary texts will be familiar with the mid-brown volumes of the EETS, with the symbol of Alfred's jewel embossed on the front cover. Most of the works attributed to King Alfred or to Aelfric, along with some of those by bishop Wulfstan and much anonymous prose and verse from the pre-Conquest period, are to be found within the Society's three series; all of the surviving medieval drama, most of the Middle English romances, much religious and secular prose and verse including the English works of John Gower, Thomas Hoccleve and most of Caxton's prints all find their place in the publications. Without EETS editions, study of medieval English texts would hardly be possible."
