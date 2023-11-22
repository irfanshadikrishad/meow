// Swift "Hello, World!" Program
print("Hello, World!") 
let x = 5
x = 10      // Error
print(x)
// create character variable
var letter: Character = "H"
print(letter)  // H

var symbol: Character = "@"
print(symbol)  // @ 
print("Enter your favorite programming language:")
let name = readLine()
print("Your favorite programming language is \(name!).")
// program to check pass or fail
let marks = 60
// use of ternary operator
let result = (marks >= 40) ? "pass" : "fail"
print("You " + result + " the exam")
// program to find the day of the week 
let dayOfWeek = 4
switch dayOfWeek {
  case 1:
    print("Sunday")
  case 2:
    print("Monday")	    
  case 3:
    print("Tuesday")
  case 4:
    print("Wednesday")
    fallthrough
  case 5:
    print("Thursday")
  case 6:
    print("Friday")    
  case 7:
    print("Saturday")
  default:
    print("Invalid day")
}
let number = 10
if (number > 0) {
    print("Number is positive.")
}
else {
    print("Number is negative.")
}
print("This statement is always executed.")
// function that adds two numbers
func addNumbers(num1: Int, num2: Int) {
  var sum = num1 + num2
  print("Sum: ", sum)
}

// calling function with two values
addNumbers(num1: 3, num2: 4)