class Animal {
  void sound() {
    print('Animal sound');
  }

  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Woof");
  }

  @override
  void eat() {
    print("Dog is eating beef");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Meow");
  }

  @override
  void eat() {
    print("Cat is eating fish");
  }
}

void main() {
  Dog myDog = Dog();
  myDog.sound();
  myDog.eat();
  print('');
  Cat myCat = Cat();
  myCat.sound();
  myCat.eat();
}
