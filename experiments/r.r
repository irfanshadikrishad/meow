# declare variable
age = 24
# print variable
print(age)
x <- 123L
# print value of x
print(x)
# print type of x
print(class(x))
# define a function to compute power
power <- function(a, b) {
    print(paste("a raised to the power b is: ", a^b))
}
x <- 3
if (x > 0) {
  print("The number is positive")
}else{
  print("else")
}
print("Outside if statement")
# create two 2 by 3 matrix
array1 <- array(c(1:12), dim = c(2,3,2))
print(array1)
# create a factor
students_gender <- factor(c("male", "female", "male", "transgender", "female"))
# print the marital_status factor
print(students_gender)