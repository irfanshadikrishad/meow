#!/usr/bin/env node
// Variable declarations
let number = 10;
const pi = 3.14159;
var message = "Hello, World!";

// Function declarations
function greet(name) {
    return `Hello, ${name}!`;
}

const add = (a, b) => a + b;

function calculateArea(radius) {
    return pi * radius * radius;
}

// Object and Array examples
const person = {
    name: "Alice",
    age: 30,
    job: "Engineer",
    greet() {
        return `Hi, I'm ${this.name}`;
    }
};

const numbers = [1, 2, 3, 4, 5];

// Accessing object properties and array elements
console.log(`Name: ${person.name}`);
console.log(`Job: ${person['job']}`);
console.log(`Second number: ${numbers[1]}`);

// Loop examples
for (let i = 0; i < numbers.length; i++) {
    console.log(`Number: ${numbers[i]}`);
}

numbers.forEach(num => {
    console.log(`Number (foreach): ${num}`);
});

let index = 0;
while (index < numbers.length) {
    console.log(`Number (while): ${numbers[index]}`);
    index++;
}

// Conditional statements
if (number > 5) {
    console.log("Number is greater than 5");
} else if (number === 5) {
    console.log("Number is equal to 5");
} else {
    console.log("Number is less than 5");
}

// Switch statement
switch (number) {
    case 1:
        console.log("Number is 1");
        break;
    case 10:
        console.log("Number is 10");
        break;
    default:
        console.log("Number is neither 1 nor 10");
}

// Error handling
try {
    let result = riskyOperation();
    console.log(`Result: ${result}`);
} catch (error) {
    console.log(`Error: ${error.message}`);
}

// Asynchronous code
function fetchData() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Data fetched successfully");
        }, 2000);
    });
}

fetchData().then(response => {
    console.log(response);
}).catch(error => {
    console.log(`Error: ${error}`);
});

// Classes and inheritance
class Animal {
    constructor(name) {
        this.name = name;
    }

    speak() {
        console.log(`${this.name} makes a sound`);
    }
}

class Dog extends Animal {
    constructor(name, breed) {
        super(name);
        this.breed = breed;
    }

    speak() {
        console.log(`${this.name} the ${this.breed} barks`);
    }
}

const myDog = new Dog("Rex", "German Shepherd");
myDog.speak();

// Template literals
const userName = "Bob";
const greeting = `Welcome, ${userName}!`;
console.log(greeting);
