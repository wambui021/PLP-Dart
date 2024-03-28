import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class AnimalBase {
  String name;
  AnimalBase(this.name);

  void eat() {
    print('$name is eating.');
  }
}

// Derived class implementing an interface and overriding a method
class Dog extends AnimalBase implements Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void makeSound() {
    print('$name barks.');
  }

  @override
  void eat() {
    print('$name is eating dog food.');
  }
}

// Class initialized with data from a file
class AnimalFromFile extends AnimalBase {
  AnimalFromFile(String name) : super(name);

  static AnimalFromFile fromFile(String filename) {
    var file = File(filename);
    var name = file.readAsStringSync().trim();
    return AnimalFromFile(name);
  }
}

// Method demonstrating the use of a loop
void printMultipleTimes(String text, int times) {
  for (var i = 0; i < times; i++) {
    print(text);
  }
}

void main() {
  // Demonstrate inheritance
  var dog = Dog('Buddy', 'Golden Retriever');
  dog.makeSound();
  dog.eat();

  // Demonstrate initializing from a file
  var animalFromFile = AnimalFromFile.fromFile('animal.txt');
  print('Loaded animal from file: ${animalFromFile.name}');

  // Demonstrate the use of a loop
  printMultipleTimes('Hello, Dart!', 3);
}
