-- Hello World
main :: IO ()
main = putStrLn "Hello, World!"

-- Basic Functions
-- A function that squares an integer
square :: Int -> Int
square x = x * x

-- A function that sums two integers
sumTwo :: Int -> Int -> Int
sumTwo x y = x + y

-- Recursive Functions
-- A function to compute the factorial of a number using recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Higher-Order Functions
-- A function that applies another function twice
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- List Comprehensions
-- Generate a list of even numbers up to 20
evens :: [Int]
evens = [x | x <- [1..20], even x]

-- Pattern Matching
-- A function to describe a number
describeNumber :: Int -> String
describeNumber 0 = "Zero"
describeNumber 1 = "One"
describeNumber _ = "Some other number"

-- Tuples
-- A function that swaps the elements of a tuple
swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

-- Fibonacci Sequence
-- A function to compute the nth Fibonacci number
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Data Types
-- Defining a custom data type
data Shape = Circle Float | Rectangle Float Float

-- A function to compute the area of a Shape
area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

-- Monads and Maybe
-- Safe division using the Maybe monad
safeDivide :: Double -> Double -> Maybe Double
safeDivide _ 0 = Nothing
safeDivide x y = Just (x / y)
