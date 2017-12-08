import System.Environment

data Expr = Val Int
          | Mul Expr Expr
          | Add Expr Expr deriving(Show)

f::String -> Int
f = read::String -> Int

eval::Expr -> Int
eval (Val x) = x
eval (Mul x y) = ((eval x) * (eval y))
eval (Add x y) = ((eval x) + (eval y))

main = do
  print $ eval t
  where t = (Add (Val 56) (Val 32))
