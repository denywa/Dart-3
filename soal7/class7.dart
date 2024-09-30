class Vehicle {
  String name;
  double speed;

  Vehicle(this.name, this.speed);

  void move() {
    print('Vehicle moves.');
  }
}

class Car extends Vehicle {
  Car(String name, double speed) : super(name, speed);

  @override
  void move() {
    if (speed > 60) {
      print('The car moves fast.');
    } else if (speed < 30) {
      print('The car moves slow.');
    } else {
      print('The car moves at a normal speed.');
    }
  }
}

class Bike extends Vehicle {
  Bike(String name, double speed) : super(name, speed);

  @override
  void move() {
    if (speed > 60) {
      print('The bike moves fast.');
    } else if (speed < 30) {
      print('The bike moves slow.');
    } else {
      print('The bike moves at a normal speed.');
    }
  }
}
