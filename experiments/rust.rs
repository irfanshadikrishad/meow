fn main() {
    println!("Hello, World!");

    let age = 31;
    println!("Age: {}", age);

    let salary = 342523.23;
    println!("Salary: {}", salary);

    let name = "Jackie";
    println!("Name: {}", name);

    let mut counter = 1;

    while counter < 6 {
        println!("{}", counter);
        counter += 1;
    }
    // Comment
    let number = 10; 

    if number > 0 {
        println!("{} is greater than 0", number);
    }
}
