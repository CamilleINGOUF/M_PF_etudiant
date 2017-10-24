mini2::Int -> Int -> Int
mini2 x y = if x > y
            then y
            else x

mini3::Int -> Int -> Int -> Int
mini3 x y z = mini2 x (mini2 y z)

main = do
  print $mini2 1 3
  print $mini3 23 2 3
