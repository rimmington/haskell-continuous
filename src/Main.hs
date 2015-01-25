-- | Main entry point to the application.
module Main where

-- |
-- Increment a number.
--
-- >>> incr 2
-- 3
incr :: (Num a) => a -> a
incr = (+ 1)

-- | The main entry point.
main :: IO ()
main = do
    putStrLn "Welcome to FP Haskell Center!"
    putStrLn "Have a good day!"
