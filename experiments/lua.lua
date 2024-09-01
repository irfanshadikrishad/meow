-- Hello World
print("Hello, World!")

-- Basic Functions
-- A function that squares a number
function square(x)
    return x * x
end

-- A function that sums two numbers
function sumTwo(x, y)
    return x + y
end

-- Recursive Functions
-- A function to compute the factorial of a number using recursion
function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

-- Higher-Order Functions
-- A function that applies another function twice
function applyTwice(f, x)
    return f(f(x))
end

-- Tables (similar to arrays and dictionaries)
-- A table containing even numbers up to 20
evens = {}
for i = 1, 20 do
    if i % 2 == 0 then
        table.insert(evens, i)
    end
end

-- Pattern Matching Equivalent
-- Lua does not have native pattern matching like Haskell, but we can use conditions
function describeNumber(n)
    if n == 0 then
        return "Zero"
    elseif n == 1 then
        return "One"
    else
        return "Some other number"
    end
end

-- Tuples
-- Lua does not have tuples, but we can return multiple values from a function
function swap(x, y)
    return y, x
end

-- Fibonacci Sequence
-- A function to compute the nth Fibonacci number
function fibonacci(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fibonacci(n - 1) + fibonacci(n - 2)
    end
end

-- Custom Data Types Equivalent
-- Lua does not have custom data types, but we can use tables to simulate this
Shape = {}

function Shape.newCircle(radius)
    return {type = "Circle", radius = radius}
end

function Shape.newRectangle(width, height)
    return {type = "Rectangle", width = width, height = height}
end

function Shape.area(shape)
    if shape.type == "Circle" then
        return math.pi * shape.radius * shape.radius
    elseif shape.type == "Rectangle" then
        return shape.width * shape.height
    end
end

-- Safe Division Using Tables
-- Lua does not have a Maybe monad, but we can return `nil` to represent an error
function safeDivide(x, y)
    if y == 0 then
        return nil, "Division by zero"
    else
        return x / y
    end
end
