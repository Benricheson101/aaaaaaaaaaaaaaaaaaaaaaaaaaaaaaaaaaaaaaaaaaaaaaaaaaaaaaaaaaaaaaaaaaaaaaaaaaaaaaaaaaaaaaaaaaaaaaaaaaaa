module Main where


scream :: String -> IO ()
scream x = do
  putStr x
  scream x

main :: IO ()
main = scream "a"
