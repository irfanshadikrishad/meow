type CarYear = number;
type CarType = string;
type CarModel = string;
type Car = {
  year: CarYear;
  type: CarType;
  model: CarModel;
};

const carYear: CarYear = 2001;
const carType: CarType = "Toyota";
const carModel: CarModel = "Corolla";
const car: Car = {
  year: carYear,
  type: carType,
  model: carModel,
};
function getTime(): number {
  return new Date().getTime();
}
function printStatusCode(code: string | number) {
  console.log(`My status code is ${code}.`);
}
printStatusCode(404);
printStatusCode("404");
let x: unknown = "hello";
console.log((x as string).length);
