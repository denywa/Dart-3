class Animal {
  void sound() {
    print('Animal sounds');
  }

  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print("Woof woof");
  }

  @override
  void eat() {
    print("Dog is eating beef");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Meow meow");
  }

  @override
  void eat() {
    print("Cat is eating fish");
  }
}
