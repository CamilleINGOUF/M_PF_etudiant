import Control.Monad
import System.Exit

main = forever welcome
  
welcome = do
  putStrLn "What is your name ? "
  name <- getLine
  if name /= "quit"
    then putStrLn ("Hello " ++ name ++ " !")
    else exitSuccess
