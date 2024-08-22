#include <iostream>
#include <vector>
#include <string>
#include <memory>
#include <algorithm>
#include <exception>
#include <cmath>
#include <ctime>

using namespace std;

void printMessage(const string &message) {
    cout << message << endl;
}

class Base {
public:
    virtual void show() {
        cout << "Base class show function" << endl;
    }
    virtual ~Base() = default;
};

class Derived : public Base {
public:
    void show() override {
        cout << "Derived class show function" << endl;
    }
};

int factorial(int n) {
    if (n <= 1) return 1;
    else return n * factorial(n - 1);
}

int main() {
    // Basic pointer operations
    int var = 5;
    int* pointVar = &var;

    cout << "var = " << var << endl;
    cout << "Address of var (&var) = " << &var << endl << endl;
    cout << "pointVar = " << pointVar << endl;
    cout << "Content of the address pointed to by pointVar (*pointVar) = " << *pointVar << endl;

    // Dynamic memory allocation
    unique_ptr<int> ptr = make_unique<int>(10);
    cout << "Value of dynamically allocated memory: " << *ptr << endl;

    // Array and vector usage
    int arr[] = {1, 2, 3, 4, 5};
    vector<int> vec(arr, arr + 5);

    cout << "Array elements: ";
    for (int i : arr) {
        cout << i << " ";
    }
    cout << endl;

    cout << "Vector elements: ";
    for (int i : vec) {
        cout << i << " ";
    }
    cout << endl;

    // String manipulation
    string str1 = "Hello";
    string str2 = "World";
    string str3 = str1 + " " + str2;
    cout << "Concatenated string: " << str3 << endl;

    // Exception handling
    try {
        if (str3.empty()) {
            throw runtime_error("String is empty");
        } else {
            printMessage("String is not empty");
        }
    } catch (const exception &e) {
        cerr << "Exception: " << e.what() << endl;
    }

    // Inheritance and polymorphism
    Base *basePtr = new Derived();
    basePtr->show();
    delete basePtr;

    // Mathematical operations
    double result = pow(PI, 2);
    cout << "PI squared: " << result << endl;

    // Time operations
    time_t now = time(0);
    char* dt = ctime(&now);
    cout << "The current date and time is: " << dt;

    // Sorting with lambda function
    sort(vec.begin(), vec.end(), [](int a, int b) { return a > b; });
    cout << "Sorted vector in descending order: ";
    for (int i : vec) {
        cout << i << " ";
    }
    cout << endl;

    // Factorial calculation
    int n = 5;
    cout << "Factorial of " << n << " is " << factorial(n) << endl;

    return 0;
}
