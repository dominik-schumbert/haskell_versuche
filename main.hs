import Control.Monad.Writer.Lazy (Any)
main :: IO()

-- Define a new string
hello :: [Char]
hello = "Hello World"

-- Define a function
doubleIt :: Int -> Int
doubleIt x = x * 2

-- Add function
add :: Int -> Int -> Int
add x y = x + y

-- Factorial function
fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n - 1)

-- if condition
doubleSmallNumber :: Int -> Int
doubleSmallNumber x = if x > 100 then x else x*2

-- Define a list
numbers :: [Int]
numbers = [ x * 2 | x <- [1..10] ]

-- Define a is Even function
isEven :: Int -> Bool
isEven = even
evenListNumbers :: [Int] -> [Int]
evenListNumbers = filter isEven

-- Define a list of strings
rawNumbers :: [Int]
rawNumbers = evenListNumbers [1..100]
stringNumbers :: [String]
stringNumbers = map show rawNumbers

-- Main monad
main = do
    print(map doubleIt [1,2,3])
    print hello
    putStr "Ergebnis von 1 + 2: "
    print(add 1 2)
    putStr "Ergebnis von Fac 5: "
    print(fac 5)
    putStr "Ergebnis von doubleSmallNumber 10: "
    print(doubleSmallNumber 10)
    putStr "Content of the list: "
    print numbers
    putStr "stringNumbers: "
    print stringNumbers
