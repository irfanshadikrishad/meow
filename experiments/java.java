import java.util.Queue;
import java.util.LinkedList;
import java.util.Stack;
import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;

class Main {

    public static void main(String[] args) {
        // Creating and initializing a Queue using LinkedList
        Queue<Integer> numbers = new LinkedList<>();
        numbers.offer(1);
        numbers.offer(2);
        numbers.offer(3);
        System.out.println("Queue: " + numbers);

        // Access elements of the Queue
        int accessedNumber = numbers.peek();
        System.out.println("Accessed Element: " + accessedNumber);

        // Remove elements from the Queue
        int removedNumber = numbers.poll();
        System.out.println("Removed Element: " + removedNumber);

        System.out.println("Updated Queue: " + numbers);

        // Using a Stack
        Stack<String> stack = new Stack<>();
        stack.push("First");
        stack.push("Second");
        stack.push("Third");
        System.out.println("\nStack: " + stack);
        System.out.println("Top Element: " + stack.peek());
        stack.pop();
        System.out.println("Stack after pop: " + stack);

        // Working with a Map
        Map<String, Integer> map = new HashMap<>();
        map.put("Alice", 30);
        map.put("Bob", 25);
        map.put("Charlie", 35);
        System.out.println("\nMap: " + map);
        System.out.println("Alice's Age: " + map.get("Alice"));
        map.remove("Bob");
        System.out.println("Map after removing Bob: " + map);

        // Working with Lists
        List<String> list = new ArrayList<>();
        list.add("Java");
        list.add("Python");
        list.add("JavaScript");
        System.out.println("\nList: " + list);
        list.set(1, "C++");
        System.out.println("List after modification: " + list);

        // Example of a custom method
        int sum = add(5, 10);
        System.out.println("\nSum of 5 and 10 is: " + sum);

        // Handling exceptions
        try {
            int result = divide(10, 0);
            System.out.println("Division Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    // Method to add two integers
    public static int add(int a, int b) {
        return a + b;
    }

    // Method to divide two integers
    public static int divide(int a, int b) {
        return a / b;
    }
}
