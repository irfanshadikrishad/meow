#!/usr/bin/env node
// Variable declarations

import os from 'os';
import path from 'path';

console.log(os.arch);

let number = 10;
const pi = 3.14159;
var message = "Hello, World!";

function greet(name) {
    return `Hello, ${name}!`;
}

const add = (a, b) => a + b;

function calculateArea(radius) {
    return pi * radius * radius;
}
calculateArea();

const person = {
    name: "Alice",
    age: 30,
    job: "Engineer",
    greet() {
        return `Hi, I'm ${this.name}`;
    }
};

const numbers = [1, 2, 3, 4, 5];

console.log(`Name: ${person.name}`);
console.log(`Job: ${person['job']}`);
console.log(`Second number: ${numbers[1]}`);

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

if (number > 5) {
    console.log("Number is greater than 5");
} else if (number === 5) {
    console.log("Number is equal to 5");
} else {
    console.log("Number is less than 5");
}

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

try {
    let result = riskyOperation();
    console.log(`Result: ${result}`);
} catch (error) {
    console.log(`Error: ${error.message}`);
}

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

const userName = "Bob";
const greeting = `Welcome, ${userName}!`;
console.log(greeting);
