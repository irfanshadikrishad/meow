using System;
namespace SealedClass {

  class Animal {
    public virtual void makeSound() {
    Console.WriteLine("Animal Sound");
    }
  }

  class Dog : Animal {

    // sealed method
    sealed public override void makeSound() {

      Console.WriteLine("Dog Sound");
    }
  }

  class Puppy : Dog {

    // trying to override sealed method
    public override void makeSound() {
      Console.WriteLine("Puppy Sound");
    }
  }   

  class Program  {
    static void Main (string [] args) {
      
      // create an object of Puppy class
      Puppy d1 = new Puppy();  
      Console.ReadLine();
    }
  }
}