abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();

  void displayInfo() {
    print("Animal Name: $name");
  }
}

// Mixin: shared behavior
mixin PetCare {
  void care() {
    print("This animal needs food, water, and care.");
  }
}

// Derived class 1
class Dog extends Animal with PetCare {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Woof! Woof!");
  }
}

// Derived class 2
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name says: Meow! Meow!");
  }
}

void main() {
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Miming");

  print("=== ANIMAL SYSTEM ===");

  dog.displayInfo();
  dog.makeSound();
  dog.care();

  print("");

  cat.displayInfo();
  cat.makeSound();
}
