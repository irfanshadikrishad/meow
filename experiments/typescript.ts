// Adjusted Method Decorator with Type Assertion
function LogExecutionTime(
  target: any,
  propertyKey: string,
  descriptor: PropertyDescriptor,
): PropertyDescriptor {
  const originalMethod = descriptor.value
  descriptor.value = function (...args: any[]) {
    console.log(`Executing: ${propertyKey}`)
    console.time(`Execution Time`)
    const result = originalMethod.apply(this, args)
    console.timeEnd(`Execution Time`)
    return result
  }
  return descriptor
}

// Generic and Conditional Types Example
type MaybePromise<T> = T | Promise<T>

type Awaite<T> = T extends Promise<infer U> ? U : T

// Complex Mapped Type
type DeepPartial<T> = {
  [P in keyof T]?: T[P] extends object ? DeepPartial<T[P]> : T[P]
}

// Using DeepPartial
interface User {
  id: number
  name: string
  details: {
    age: number
    address: {
      street: string
      city: string
    }
  }
}

const partialUser: DeepPartial<User> = {
  name: "John Doe",
  details: {
    address: {
      city: "Somewhere",
    },
  },
}

// Type Inference and Function Overloading
function getValue<T>(value: MaybePromise<T>): Awaited<T> {
  if (value instanceof Promise) {
    return value.then((v) => v) as Awaited<T>
  }
  return value as Awaited<T>
}

// Example of a complex function with overloads
function add(a: number, b: number): number
function add(a: string, b: string): string
function add(a: any, b: any): any {
  return a + b
}

// Utility Type and Generic Example
type ExtractArrayType<T> = T extends (infer U)[] ? U : never

const numbers: number[] = [1, 2, 3, 4]
type NumberType = ExtractArrayType<typeof numbers> // Should infer 'number'

// Recursive Type Example
type JSONValue =
  | string
  | number
  | boolean
  | null
  | JSONValue[]
  | { [key: string]: JSONValue }

const jsonExample: JSONValue = {
  name: "ChatGPT",
  features: ["AI", "Chat", { nested: true }],
  metadata: null,
}
