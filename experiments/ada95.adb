-- Hello World
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
begin
   Put_Line("Hello, World!");
end Main;

-- Basic Functions
-- A function that squares a number
function Square(X : Integer) return Integer is
begin
   return X * X;
end Square;

-- A function that sums two numbers
function Sum_Two(X, Y : Integer) return Integer is
begin
   return X + Y;
end Sum_Two;

-- Recursive Functions
-- A function to compute the factorial of a number using recursion
function Factorial(N : Integer) return Integer is
begin
   if N = 0 then
      return 1;
   else
      return N * Factorial(N - 1);
   end if;
end Factorial;

-- Higher-Order Functions
-- Ada doesn't directly support higher-order functions like some languages,
-- but you can use access-to-subprogram types.
type Int_Function_Access is access function (X : Integer) return Integer;

-- A procedure that applies another function twice
procedure Apply_Twice(Func : Int_Function_Access; X : Integer) is
begin
   Put_Line(Integer'Image(Func.all(Func.all(X))));
end Apply_Twice;

-- Example of using Apply_Twice with Square function
procedure Test_Apply_Twice is
   Square_Access : Int_Function_Access := Square'Access;
begin
   Apply_Twice(Square_Access, 2); -- Output will be 16
end Test_Apply_Twice;

-- Arrays and Ranges
-- An array of even numbers up to 20
type Int_Array is array (1 .. 10) of Integer;
Evens : Int_Array := (2, 4, 6, 8, 10, 12, 14, 16, 18, 20);

-- Pattern Matching Equivalent
-- Ada uses case statements instead of pattern matching like Haskell
function Describe_Number(N : Integer) return String is
begin
   case N is
      when 0 => return "Zero";
      when 1 => return "One";
      when others => return "Some other number";
   end case;
end Describe_Number;

-- Tuples
-- Ada doesn't have tuples natively, but records can be used for similar purposes
type Int_Pair is record
   X : Integer;
   Y : Integer;
end record;

-- A function to swap two integers
function Swap(A, B : Integer) return Int_Pair is
begin
   return (X => B, Y => A);
end Swap;

-- Fibonacci Sequence
-- A function to compute the nth Fibonacci number
function Fibonacci(N : Integer) return Integer is
begin
   if N = 0 then
      return 0;
   elsif N = 1 then
      return 1;
   else
      return Fibonacci(N - 1) + Fibonacci(N - 2);
   end if;
end Fibonacci;

-- Custom Data Types Equivalent
-- Using tagged types and type extensions to simulate polymorphic behavior
type Shape is tagged record
   null;
end record;

function Area(S : Shape) return Float is abstract;

type Circle is new Shape with record
   Radius : Float;
end record;

function Area(C : Circle) return Float is
begin
   return 3.14159 * C.Radius * C.Radius;
end Area;

type Rectangle is new Shape with record
   Width, Height : Float;
end record;

function Area(R : Rectangle) return Float is
begin
   return R.Width * R.Height;
end Area;

-- Safe Division Using return of `Unrestricted_Access` to handle errors
function Safe_Divide(X, Y : Float) return Float is
begin
   if Y = 0.0 then
      raise Constraint_Error with "Division by zero";
   else
      return X / Y;
   end if;
end Safe_Divide;

-- Example usage of the custom data types
procedure Test_Shapes is
   C : Circle := (Radius => 5.0);
   R : Rectangle := (Width => 4.0, Height => 3.0);
begin
   Put_Line("Area of Circle: " & Float'Image(Area(C)));
   Put_Line("Area of Rectangle: " & Float'Image(Area(R)));
end Test_Shapes;
