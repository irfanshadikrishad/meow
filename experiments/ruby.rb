# Hello World
puts "Hello, World!"

# Basic Functions
# A function that squares a number
def square(x)
  x * x
end

# A function that sums two numbers
def sum_two(x, y)
  x + y
end

# Recursive Functions
# A function to compute the factorial of a number using recursion
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

# Higher-Order Functions
# A function that applies another function twice
def apply_twice(f, x)
  f.call(f.call(x))
end

# Using apply_twice with a block
result = apply_twice(->(x) { x + 2 }, 3) # => 7

# Arrays and Ranges
# An array of even numbers up to 20
evens = (1..20).select { |x| x.even? }

# Pattern Matching Equivalent
# Ruby uses case expressions instead of pattern matching like Haskell
def describe_number(n)
  case n
  when 0
    "Zero"
  when 1
    "One"
  else
    "Some other number"
  end
end

# Tuples
# Ruby doesn't have native tuples, but arrays can be used for similar purposes
def swap(x, y)
  [y, x]
end

# Fibonacci Sequence
# A function to compute the nth Fibonacci number
def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

# Classes and Objects
# Defining a class to represent different shapes
class Shape
  def area
    raise NotImplementedError, "Subclasses must implement the area method"
  end
end

class Circle < Shape
  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * radius**2
  end
end

class Rectangle < Shape
  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def area
    width * height
  end
end

# Safe Division Using nil
# Ruby can use `nil` to indicate an absence of value, similar to Maybe in Haskell
def safe_divide(x, y)
  return nil if y == 0
  x.to_f / y
end
