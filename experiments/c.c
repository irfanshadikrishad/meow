#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <ctype.h>
#include <stdbool.h>
#include <limits.h>
#include <float.h>
#include <assert.h>

#define PI 3.14159
#define BUFFER_SIZE 1024

struct threeNumber
{
   int n1, n2, n3;
   float g1;
   double c1;
};

void printHelloWorld() {
    printf("Hello, World!\n");
    printf(`Hello, World`)
}

int factorial(int n) {
    if (n <= 1) return 1;
    else return n * factorial(n - 1);
}

int main()
{
    int n, i;
    double result;
    char buffer[BUFFER_SIZE];
    struct threeNum num;
    FILE *fptr;

    printHelloWorld();

    if ((fptr = fopen("C:\\program.bin","rb")) == NULL){
        printf("Error! opening file\n");
        exit(1);
    }

    fseek(fptr, -sizeof(struct threeNum), SEEK_END);

    for(n = 1; n < 5; ++n)
    {
        fread(&num, sizeof(struct threeNum), 1, fptr);
        printf("n1: %d\tn2: %d\tn3: %d\tg1: %.2f\n", num.n1, num.n2, num.n3, num.g1);
        fseek(fptr, -2*sizeof(struct threeNum), SEEK_CUR);
    }
    fclose(fptr);

    result = pow(PI, 2);
    printf("PI squared: %.2f\n", result);

    strcpy(buffer, "C Programming");
    printf("Buffer content: %s\n", buffer);
    
    char c = 'A';
    if (isalpha(c)) {
        printf("%c is an alphabetic character.\n", c);
    }

    bool flag = true;
    if (flag) {
        printf("Flag is true\n");
    } else {
        printf("Flag is false\n");
    }

    for (i = 1; i <= 10; i++) {
        printf("Factorial of %d: %d\n", i, factorial(i));
    }

    printf("Maximum value for int: %d\n", INT_MAX);
    printf("Minimum value for float: %.10e\n", FLT_MIN);

    assert(factorial(5) == 120);

    time_t t;
    time(&t);
    printf("Current time: %s", ctime(&t));

    srand((unsigned) time(NULL));
    int randomNum = rand() % 100;
    printf("Random number: %d\n", randomNum);

    return 0;
}
