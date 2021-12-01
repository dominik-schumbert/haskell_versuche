module Main (main) where
import Control.Monad.Writer.Lazy (Any)

main :: IO()

-- Define a new list
liste :: [Integer]
liste = filter even [1..100]

-- Load from file
count :: Eq a => a -> [a] -> Int
count x xs = length [x' | x' <- xs, x==x']

cntFile :: Char -> FilePath -> IO Int
cntFile character file = do
    content <- readFile file
    let cnt = count character content
    return cnt

main = do
    --print liste
    cnt <- cntFile 'c' "test_text.txt"
    let stringText = "Character c occured : " ++ show cnt
    putStrLn stringText

