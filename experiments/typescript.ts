#!/usr/bin/env node

let first: string = "hello";
let n1: number = 15;
let boo1: boolean = true;
let boo2: boolean = false;
let nullValue: null = null;
let undefinedValue: undefined = undefined;
const key: symbol = Symbol("unique_key");
let numbers: number[] = [1, 2, 3, 4, 5];
let people: [string, number] = ["John", 30];
let ghost: any = "hey any";
// 7AE7C7
const car: { type: string; model: string; year: number } = {
  type: "Toyota",
  model: "Corolla",
  year: 2009,
};

function logMessage(message: string, name?: string): void {
  console.log(message);
}

interface Animal {
  name: string;
  age: number;
}

let dog: Animal = { name: "Buddy", age: 5 };

enum Roles {
  user = "user",
  admin = "admin",
}

type Info = {
  name: string;
  gender?: string;
  email: string;
};

function printStatusCode(code: string | number) {
  console.log(`My status code is ${code}.`);
}
printStatusCode(404);
printStatusCode("404");

let add: (x: number, y: number) => number;

add = (a: number, b: number) => {
  return a + b;
};

console.log(add(5, 10));

// Generics
function createPair<S, T>(v1: S, v2: T): [S, T] {
  return [v1, v2];
}
console.log(createPair<string, number>("hello", 42));

// Class
class Person {
  public age: number;
  public firstName: string;
  public lastName: string;

  // Getter & Setter
  public get getAge() {
    return this.age;
  }
  public set setAge(new_age: number) {
    this.age = new_age;
  }
}

// Object
let person = new Person();
person.age = 26;

let a = Math.floor(5);
let b = Math.floor(6);
// let c = Promise.all();

new Error(`hello error`);

var trigger = "2",
  regexp = new RegExp("^[1-9]d{0,2}$"),
  test = regexp.test(trigger);
alert(test + ""); // will display true

let text = "string";

let arr_y = [];

for (let arr of arr_y) {
  console.log(arr);
}
