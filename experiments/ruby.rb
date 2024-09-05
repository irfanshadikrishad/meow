puts "Hello, World!"

def square(x)
  x * x
end

def sum_two(x, y)
  x + y
end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
end

def apply_twice(f, x)
  f.call(f.call(x))
end

result = apply_twice(->(x) { x + 2 }, 3)

evens = (1..20).select { |x| x.even? }

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

def swap(x, y)
  [y, x]
end

def fibonacci(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

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

def safe_divide(x, y)
  return nil if y == 0
  x.to_f / y
end
