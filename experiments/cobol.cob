       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXAMPLES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       * Variables for examples
       01 NUM1           PIC 9(4) VALUE 5.
       01 NUM2           PIC 9(4) VALUE 10.
       01 RESULT         PIC 9(8).
       01 USER-NUMBER    PIC 9(4).
       01 DESCRIPTION    PIC X(20).
       01 N              PIC 9(4) VALUE 10.

       PROCEDURE DIVISION.

       * Hello World
       DISPLAY "Hello, World!".

       * Basic Functions
       * Squaring a number
       MULTIPLY NUM1 BY NUM1 GIVING RESULT.
       DISPLAY "Square of " NUM1 " is " RESULT.

       * Summing two numbers
       ADD NUM1 TO NUM2 GIVING RESULT.
       DISPLAY "Sum of " NUM1 " and " NUM2 " is " RESULT.

       * Recursive Functions
       * COBOL does not support recursion directly. Iterative factorial calculation is used instead.
       PERFORM FACTORIAL-CALC.
       DISPLAY "Factorial of " N " is " RESULT.

       * Higher-Order Functions
       * COBOL does not support higher-order functions directly.

       * Arrays and Ranges
       * COBOL does not directly support array-like operations like ranges in a high-level way.
       * Define and initialize arrays using OCCURS.
       01 EVENS.
           05 EVEN-NUMBERS OCCURS 10 TIMES PIC 99 VALUE 0.
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
          COMPUTE EVEN-NUMBERS(I) = I * 2
       END-PERFORM.
       DISPLAY "Even numbers up to 20: ".
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
          DISPLAY EVEN-NUMBERS(I)
       END-PERFORM.

       * Pattern Matching Equivalent
       * Using IF statements to simulate pattern matching
       MOVE 1 TO USER-NUMBER.
       IF USER-NUMBER = 0 THEN
          MOVE "Zero" TO DESCRIPTION
       ELSE IF USER-NUMBER = 1 THEN
          MOVE "One" TO DESCRIPTION
       ELSE
          MOVE "Some other number" TO DESCRIPTION
       END-IF.
       DISPLAY DESCRIPTION.

       * Tuples
       * COBOL does not have tuples; using groups and records.
       01 PAIR.
           05 FIRST-NUMBER  PIC 9(4).
           05 SECOND-NUMBER PIC 9(4).

       * Fibonacci Sequence
       * Iterative approach due to lack of recursion
       PERFORM FIBONACCI-CALC.
       DISPLAY "Fibonacci of " N " is " RESULT.

       * Custom Data Types Equivalent
       * Using level 01 or 77 variables for "custom" structures
       01 SHAPE.
           05 CIRCLE.
               10 RADIUS      PIC 9(5)V9(5).
           05 RECTANGLE.
               10 WIDTH       PIC 9(5)V9(5).
               10 HEIGHT      PIC 9(5)V9(5).

       * Area calculation using procedure division
       MOVE 3.14 TO RADIUS.
       PERFORM AREA-OF-CIRCLE.
       DISPLAY "Area of Circle: " RESULT.

       MOVE 4.0 TO WIDTH.
       MOVE 5.0 TO HEIGHT.
       PERFORM AREA-OF-RECTANGLE.
       DISPLAY "Area of Rectangle: " RESULT.

       * Safe Division
       * COBOL does not have monads or Maybe types; uses basic IF checks
       DIVIDE NUM1 BY NUM2 GIVING RESULT
       ON SIZE ERROR DISPLAY "Division by zero not allowed."
       NOT ON SIZE ERROR DISPLAY "Safe division result: " RESULT.

       * Factorial Calculation
       FACTORIAL-CALC.
           MOVE 1 TO RESULT.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
               MULTIPLY RESULT BY I
           END-PERFORM.

       * Fibonacci Calculation
       FIBONACCI-CALC.
           MOVE 0 TO A.
           MOVE 1 TO B.
           PERFORM VARYING I FROM 2 BY 1 UNTIL I >= N
               COMPUTE TEMP = A + B
               MOVE B TO A
               MOVE TEMP TO B
           END-PERFORM.
           MOVE B TO RESULT.

       * Area of Circle Calculation
       AREA-OF-CIRCLE.
           MULTIPLY 3.14159 BY RADIUS BY RADIUS GIVING RESULT.

       * Area of Rectangle Calculation
       AREA-OF-RECTANGLE.
           MULTIPLY WIDTH BY HEIGHT GIVING RESULT.

       STOP RUN.
