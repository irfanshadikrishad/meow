// Main function - entry point of a Dart application
void main() {
  // Variables and constants
  var name = 'Alice'; // type inference
  String lastName = 'Smith';
  const int age = 30; // compile-time constant
  final double height = 5.6; // run-time constant

  // Printing to console
  print('Hello, $name $lastName!'); // String interpolation
  print('Age: $age, Height: $height');

  // Conditional statements
  if (age > 18) {
    print('You are an adult.');
  } else {
    print('You are not an adult.');
  }

  // Loops
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }

  // List and forEach loop
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) => print('Fruit: $fruit'));

  // Map and forEach loop
  Map<String, int> scores = {'Alice': 90, 'Bob': 85, 'Charlie': 80};
  scores.forEach((key, value) => print('$key scored $value'));

  // Functions
  int square(int num) {
    return num * num;
  }

  print('Square of 4 is ${square(4)}');

  // Using optional parameters in a function
  greet('John'); // Only name provided
  greet('Jane', 'Hello'); // Both name and message provided

  // Creating and using an object
  var person = Person('David', 'Brown');
  person.sayHello();

  // Creating and using an object with inheritance
  var student = Student('Emma', 'Green', 12345);
  student.sayHello();
  student.study();
}

// Function with optional positional parameters
void greet(String name, [String message = 'Hi']) {
  print('$message, $name!');
}

// Class definition
class Person {
  String firstName;
  String lastName;

  // Constructor
  Person(this.firstName, this.lastName);

  // Method
  void sayHello() {
    print('Hello, my name is $firstName $lastName.');
  }
}

// Inheritance: Student class extends Person class
class Student extends Person {
  int studentId;

  // Constructor
  Student(String firstName, String lastName, this.studentId)
      : super(firstName, lastName);

  // Method
  void study() {
    print('$firstName is studying.');
  }

  // Overriding a method
  @override
  void sayHello() {
    super.sayHello();
    print('My student ID is $studentId.');
  }
}
