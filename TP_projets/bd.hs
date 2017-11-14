type Contact = (String, String)    -- (name, email)
type Base = [Contact]

search :: Base -> String -> Bool
search [] name = False
search (x:xs) name
  | fst x /= name = search xs name
  | otherwise = True

insert :: Base -> Contact -> Base
insert base cont
 | search base (fst cont) == False = cont : base
 | otherwise = base


update :: Base -> Contact -> Base
update [] cont = cont:[]
update (x:xs) cont
  | search (x:xs) (fst cont) == False = insert (x:xs) cont
  | (fst x) == (fst cont)  = cont:xs
  | otherwise = x:(update xs cont)

remove :: Base -> String -> Base
remove [] name = []
remove (x:xs) name
  | (fst x) == name = xs
  | otherwise = x:(remove xs name)

main = do
  print $search [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] "tutu"
  print $insert [("toto","toto@ulco.fr")] ("tata","tata@ulca.fr")
  print $insert [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] ("tata","tata@ulca.fr")
  print $update [("toto","toto@ulco.fr")] ("tata","tata@nimpe.org")
  print $update [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] ("tata","tata@nimpe.org")
  print $remove [("toto","toto@ulco.fr"),("tata","tata@ulca.fr")] "tata"


