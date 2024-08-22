using System;

namespace SealedClass
{
    class Animal
    {
        public virtual void makeSound()
        {
            Console.WriteLine("Animal Sound");
        }
    }

    class Dog : Animal
    {
        sealed public override void makeSound()
        {
            Console.WriteLine("Dog Sound");
        }
    }

    class Puppy : Dog
    {
        public override void makeSound()
        {
            Console.WriteLine("Puppy Sound");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Puppy d1 = new Puppy();
            Console.ReadLine();
        }
    }

    class Example
    {
        public int publicVar = 10;
        private int privateVar = 20;
        protected int protectedVar = 30;
        internal int internalVar = 40;
        protected internal int protectedInternalVar = 50;
        private protected int privateProtectedVar = 60;
        public static int staticVar = 70;
        public readonly int readonlyVar = 80;
        public const int constVar = 90;
        public volatile int volatileVar;
        public new int publicVar = 100;

        public void ModifyValues(ref int refVar, out int outVar, in int inVar)
        {
            refVar = 200;
            outVar = 300;
        }
    }

    public abstract class AbstractClass
    {
        public abstract int AbstractProperty { get; set; }
        public abstract void AbstractMethod();
    }

    public class DerivedClass : AbstractClass
    {
        public override int AbstractProperty { get; set; }
        public override void AbstractMethod() { }
        public sealed int sealedVar = 500;
    }

    public unsafe class UnsafeExample
    {
        public int* pointerVar;
    }

    public partial class PartialClass
    {
        public int partialVar;
    }

    public class ExternExample
    {
        public extern void ExternMethod();
    }

    public async Task<int> AsyncMethod()
    {
        await Task.Delay(1000);
        return 600;
    }
}
