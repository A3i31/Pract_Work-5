import 'dart:io';

void main() {
  Ace ace = Ace(color: 'Red', type: 'Hearts');
  King king = King(color: 'Black', type: 'Spades');
  Lady lady = Lady(color: 'Red', type: 'Diamonds');
  Jack jack = Jack(color: 'Black', type: 'Clubs');
  print('${ace.color} ${ace.type}');
  print('${king.color} ${king.type}');
  print('${lady.color} ${lady.type}');
  print('${jack.color} ${jack.type}');
  //2
  Father father = Father(
      handed: 'Right', colorHair: 'Brown', colorEyes: 'Brown', etnic: 'Asian');
  Son son = Son(
      handed: 'Left',
      colorHair: 'Brown',
      colorEyes: 'Brown',
      etnic: 'European');
  print(
      'Father: Hand-${father.handed}, Color Hair - ${father.colorHair}, Color eyes -${father.colorEyes}, Etnic - ${father.etnic}');
  print(
      'Son: Hand-${son.handed}, Color Hair - ${son.colorHair}, Color eyes -${son.colorEyes}, Etnic - ${son.etnic}');
  //3
  ToyotaOne toyotaOne = ToyotaOne(
      engine: 'JR', body: 'Iron', suspension: 'Standart', headLights: 'Xenon');
  ToyotaTwo toyotaTwo = ToyotaTwo(
      engine: 'GR', body: 'Iron', suspension: 'Pneumatic', headLights: 'Xenon');
  ToyotaThree toyotaThree = ToyotaThree(
      engine: 'GR',
      body: 'Carbon',
      suspension: 'Pneumatic',
      headLights: 'Laser');
  print(
      'Generation 1: Engine- ${toyotaOne.engine}, Body- ${toyotaOne.body}, Suspension -${toyotaOne.suspension}, Head Lights - ${toyotaOne.headLights}');
  print(
      'Generation 2: Engine- ${toyotaTwo.engine}, Body- ${toyotaTwo.body}, Suspension -${toyotaTwo.suspension}, Head Lights - ${toyotaTwo.headLights}');
  print(
      'Generation 3: Engine- ${toyotaThree.engine}, Body- ${toyotaThree.body}, Suspension -${toyotaThree.suspension}, Head Lights - ${toyotaThree.headLights}');
  //4
  Scooter scooter = Scooter(maxSpeed: 30, mileAge: 40000, seatingCapacity: 2);
  Bus bus = Bus(maxSpeed: 80, mileAge: 100000);
  MiniBus miniBus = MiniBus(maxSpeed: 80, mileAge: 120000);
  print(
      'Скутер макс.скорость: ${scooter.maxSpeed} , пробег: ${scooter.mileAge}, вместимость: ${scooter.seatingCapacity}, цвет: ${scooter.color}');
  print(
      'Автобус макс.скорость: ${bus.maxSpeed} , пробег: ${bus.mileAge}, вместимость: ${bus.seatingCapacity}, цвет: ${bus.color}');
  print(
      'Автобус макс.скорость: ${miniBus.maxSpeed} , пробег: ${miniBus.mileAge}, вместимость: ${miniBus.seatingCapacity}, цвет: ${miniBus.color}');
  miniBus.fareOfVehicle();
  //5
  List<Person> people = [];
  for (int i = 0; i < 3; i++) {
    print('Введите имя персоны ${i + 1}:');
    String name = stdin.readLineSync() ?? '';
    while (name.isEmpty) {
      print('Введите имя персоны еще раз ${i + 1}');
      name = stdin.readLineSync() ?? '';
    }
    if (i < 2) {
      people.add(Student(name));
    } else {
      people.add(Teacher(name));
    }
  }

  for (var person in people) {
    if (person is Student) {
      person.study();
    } else if (person is Teacher) {
      person.explain();
    } else {
      print('Ошибка');
    }
  }
}

class Card {
  String color;
  String type;
  Card({required this.color, required this.type});
}

class Ace extends Card {
  Ace({required super.color, required super.type});
}

class King extends Card {
  King({required super.color, required super.type});
}

class Lady extends Card {
  Lady({required super.color, required super.type});
}

class Jack extends Card {
  Jack({required super.color, required super.type});
}
//2

class Father {
  String handed;
  String colorHair;
  String colorEyes;
  String etnic;
  Father(
      {required this.handed,
      required this.colorHair,
      required this.colorEyes,
      required this.etnic});
}

class Son extends Father {
  Son(
      {required super.handed,
      required super.colorHair,
      required super.colorEyes,
      required super.etnic});
}
//3

class ToyotaOne {
  String engine;
  String body;
  String suspension;
  String headLights;
  ToyotaOne(
      {required this.engine,
      required this.body,
      required this.suspension,
      required this.headLights});
}

class ToyotaTwo extends ToyotaOne {
  ToyotaTwo(
      {required super.engine,
      required super.body,
      required super.suspension,
      required super.headLights});
}

class ToyotaThree extends ToyotaOne {
  ToyotaThree(
      {required super.engine,
      required super.body,
      required super.suspension,
      required super.headLights});
}
//4

class Vehicle {
  int maxSpeed;
  int mileAge;
  int seatingCapacity;
  String color;
  double fare;

  Vehicle(
      {required this.maxSpeed,
      required this.mileAge,
      required this.seatingCapacity,
      this.color = 'White',
      this.fare = 0});
  void fareOfVehicle() {
    print(fare = seatingCapacity * 100);
  }
}

class Scooter extends Vehicle {
  Scooter(
      {required super.maxSpeed,
      required super.mileAge,
      required super.seatingCapacity,
      super.color});
}

class Bus extends Vehicle {
  Bus(
      {required super.maxSpeed,
      required super.mileAge,
      super.seatingCapacity = 50,
      super.color,
      super.fare});
}

class MiniBus extends Vehicle {
  MiniBus(
      {required super.maxSpeed,
      required super.mileAge,
      super.seatingCapacity = 20,
      super.color,
      super.fare});
  @override
  void fareOfVehicle() {
    fare = seatingCapacity * 100;
    print(fare += fare * 0.10);
  }
}

//5
class Person {
  String name;

  Person(this.name);
}

class Student extends Person {
  Student(super.name);

  void study() {
    print('$name is studying');
  }
}

class Teacher extends Person {
  Teacher(super.name);

  void explain() {
    print('$name is explaining');
  }
}
