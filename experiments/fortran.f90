! Hello World
program hello
    print *, "Hello, World!"
end program hello

! Basic Functions
! A function that squares a number
function square(x) result(sq)
    integer, intent(in) :: x
    integer :: sq
    sq = x * x
end function square

! A function that sums two numbers
function sum_two(x, y) result(sum)
    integer, intent(in) :: x, y
    integer :: sum
    sum = x + y
end function sum_two

! Recursive Functions
! A function to compute the factorial of a number using recursion
function factorial(n) result(fact)
    integer, intent(in) :: n
    integer :: fact
    if (n == 0) then
        fact = 1
    else
        fact = n * factorial(n - 1)
    end if
end function factorial

! Higher-Order Functions
! Fortran does not directly support higher-order functions, but you can use function pointers.

! Arrays and Ranges
! An array of even numbers up to 20
program even_numbers
    integer, dimension(10) :: evens
    integer :: i

    do i = 1, 10
        evens(i) = i * 2
    end do

    print *, "Even numbers up to 20:"
    print *, evens
end program even_numbers

! Pattern Matching Equivalent
! Fortran uses IF statements for conditional logic
program describe_number
    integer :: n
    character(len=20) :: description

    n = 1  ! Example value

    if (n == 0) then
        description = "Zero"
    else if (n == 1) then
        description = "One"
    else
        description = "Some other number"
    end if

    print *, description
end program describe_number

! Tuples
! Fortran does not have tuples, but you can use derived types (records) for similar purposes
module shapes
    implicit none
    type :: pair
        integer :: x
        integer :: y
    end type pair
end module shapes

! A function that swaps two integers
program swap
    use shapes
    type(pair) :: p
    integer :: temp

    p%x = 5
    p%y = 10

    ! Swap values
    temp = p%x
    p%x = p%y
    p%y = temp

    print *, "Swapped values: ", p%x, p%y
end program swap

! Fibonacci Sequence
! A function to compute the nth Fibonacci number
function fibonacci(n) result(fib)
    integer, intent(in) :: n
    integer :: fib
    if (n == 0) then
        fib = 0
    else if (n == 1) then
        fib = 1
    else
        fib = fibonacci(n - 1) + fibonacci(n - 2)
    end if
end function fibonacci

! Custom Data Types Equivalent
! Using derived types and type extensions to simulate polymorphic behavior
module shapes
    implicit none
    type :: shape
    end type shape

    type, extends(shape) :: circle
        real :: radius
    end type circle

    type, extends(shape) :: rectangle
        real :: width
        real :: height
    end type rectangle

    contains

    function area(s) result(a)
        type(shape), intent(in) :: s
        real :: a

        select type (s)
        type is (circle)
            a = 3.14159 * s%radius**2
        type is (rectangle)
            a = s%width * s%height
        class default
            a = 0.0
        end select
    end function area
end module shapes

! Safe Division Using Derived Types
! Using IF statements to handle division by zero
program safe_divide
    use shapes
    real :: x, y, result

    x = 10.0
    y = 0.0

    if (y == 0.0) then
        print *, "Division by zero is not allowed."
    else
        result = x / y
        print *, "Safe division result: ", result
    end if
end program safe_divide
