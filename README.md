[Flutter projects readme](flutterProject/flutterProject.md)

# Learning Flutter

Flutter use Dart language, your code structure contain `void main() {}`, yours content be executed.

## Main Dart variables types

### int (Integer):
~~~Dart
int code = 1;
print(code);

int subscription;
subscription = 2;
print(subscription);
~~~

### double:
~~~Dart
double pi = 3.14;
print(pi);
~~~

### String:
~~~Dart
String name = 'Leon';
print(name);
~~~

### bool (Boolean):
~~~Dart
bool available = true;
print(available);
~~~

### var/ dynamic (Undefined type):
~~~Dart
var prod;
prod = 55;
print(prod);

prod = 'pen'; // Allowed change value/type because don't attributed value on the create
print(prod);

var lumen = 678;
lumen = 'dark'; // Don't allowed, because value is attributed on the creation

dynamic humidity = 5; // Most recommended in this case
humidity = 'no';
print(humidity);
~~~

Obs.: Give preference to previously typed variables.

## Concatenate variables

~~~Dart
double dollarToReal = 4.50;
print('1 dollar worth $dollarToReal in real coin');

int workValue = 3;
print('5 * $workValue = ${5 * workValue}'); // With math operation
print('The work value was' + workValue.toString());
print('Double the work value is: ' + (workValue * 2).toString());
~~~

## Mathematical operations

~~~Dart
int number1 = 5;
int number2 = 10;

print('Value from number1: $number1');
print('Value from number2: $number2');

int addition = number1 + number2;
print('Addition: $addition');

int subtraction = number1 - number2;
print('Subtraction: $subtraction');

int multiplication = number1 * number2;
print('Multiplication: $multiplication');

double division = number1 / number2;
print('Division: $division');

int divisionIntegerPart = number1 ~/ number2;
print('Division integer part: $divisionIntegerPart');

int restOfDivision = number1 % number2;
print('Rest of division: $restOfDivision');
~~~

## Increment/ decrement variables (++, --)

~~~Dart
int val;
val = 10;

val = val + 1; // Increment one to val
print(val);
val += 2; // Increment two to val
print(val);

val = val - 2; // Decrement two to val
print(val);
val -= 1; // Decrement one to val

print(val++); // Print content val and increment
print(val);
print(++val); // Increment and print content val

print(val--); // Print content val and decrement
print(val);
print(--val); // Decrement and print content val
~~~

## Conditionals (if, else if, else)

### Conditionals - Compare two values:
~~~Dart
int valParameter = 20;
int valToCompare;
valToCompare = 10;

if(valToCompare == valParameter) {
  print('Value to compare equals to parameter value');
} else if(valToCompare > valParameter) {
  print('Value to compare is greater than parameter value');
} else {
  print('Value to be compared is less than the parameter value');
}
~~~

### Conditionals - Compare one boolean parameter:
~~~Dart
bool wantGoToShopping = true;

if(wantGoToShopping) {
  print('I want go to shopping');
} else {
  print('I do not want go to shopping');
}
~~~

### Conditionals - Compare two parameters using AND (&&):
~~~Dart
bool wantGoToShopping = true;
double money = 8;

if(wantGoToShopping && money > 9) {
  print('I go to shopping');
} else {
  print('I do not go to shopping');
}
~~~

### Conditionals - Compare two or more parameters using OR (&&):
~~~Dart
bool havePhysicalDisability;
bool arePregnant;

havePhysicalDisability = true;
arePregnant = false;

if(havePhysicalDisability || arePregnant) {
  print('Preferential ticket');
} else {
  print('Normal ticket');
}
~~~

Add check elderly people:

~~~Dart
bool havePhysicalDisability;
bool arePregnant;
int age;

age = 60;
havePhysicalDisability = false;
arePregnant = false;

if(havePhysicalDisability || arePregnant || age >= 60) {
  print('Preferential ticket');
} else {
  print('Normal ticket');
}
~~~

### Conditionals - Ternary conditional:
~~~Dart
int yourAge = 40;

print(yourAge > 59 ? 'You are elderly' : 'You don\'t elderly');
~~~

## Conditionals (switch)

~~~Dart
String environment = 'prod';

switch(environment) {
    case 'homolog':
      print('Set HOMOLOG environment');
      break;
    
    case 'prod':
      print('Set PROD environment');
      break;

    default:
      print('Set other environment');
      break;
}
~~~


## Repeat loop

### Repeat loop with for:
With increment
~~~Dart
for(int i = 0; i<= 10; i++) {
  print('Value is $i');
}
~~~

With decrement
~~~Dart
for(int i = 10; i>= 0; i--) {
  print('Value is $i');
}
~~~

### Repeat loop with while:
~~~Dart
int toIncrement = 1;

while(toIncrement <= 10) {
  print('toIncrement value is: $toIncrement');
  toIncrement++;
}
~~~

~~~Dart
bool control = true;
int counter = 1;

while(control) {
  print('counter value is $counter');
  counter++;

  if(counter > 10) {
    control = false;
  }

}
~~~

### Repeat loop with do while:
~~~Dart
int executeCounter = 10;

do {
  print(executeCounter);
  executeCounter--;
} while(executeCounter >= 0);
~~~

~~~Dart
int executeCounter = 10;
bool executeControl = true;

do {
  print(executeCounter);
  executeCounter--;

  if(executeCounter <= -1) {
    executeControl = false;
  }
} while(executeControl);
~~~

## Procedures (method and functions)

Both are declared outside the main function, but called inside.

### Methods:
Remember, with arguments or not, if procedure don't return values, they are method.

~~~Dart
printAnimal('Dog');
printAnimal('Cat');
printAnimalAndAge('Horse', 8);

void printAnimal(String animal) {
  print('The animal is: ' + animal);
}

void printAnimalAndAge(String animal, int age) {
  print('The animal is: $animal, have $age years old');
}
~~~

// With optional parameter

~~~Dart
printAnimalAndAge('Horse', age: 8);
printAnimalAndAge('Monkey');


void printAnimalAndAge(String animal, {int? age}) {
  String ageInfo = age != null ? ', have $age years old' : '.';
  print('The animal is: $animal$ageInfo');
}
~~~

// In one line

~~~Dart
printOption(true);

void printOption(bool state) => print(state ? 'Allow' : 'Block');
~~~


### Functions:
Remember, with arguments or not, if procedure return values, they are function.

~~~Dart
int value = 8;

print('The double of $value is ' + multiplicationByTwo(value).toString());

int multiplicationByTwo(int param1) {
  return param1 * 2;
}
~~~

~~~Dart
int useValue = 7;

print('$useValue is even?: ' + evenNumber(useValue).toString());

bool evenNumber(int value) {
  return value % 2 == 0;
}
~~~

// With optional parameter

~~~Dart
print(productDescription('Egs'));
print(productDescription('Bread', obs: 'Contain milk'));

String productDescription(String name, {String obs=''}) {
  return 'Product name: $name \n$obs';
}
~~~

// In one line

~~~Dart
print(showOptionDescription(43));

String showOptionDescription(int code) => (code == 34 ? 'Open' : 'Close');
~~~

## Objects in Dart

### Creating class, instantiate and handling object:
~~~Dart
// Instantiating object
Car beetle = new Car();

// Configuring object
beetle.model = 'New Beetle';
beetle.year = 2015;

// presenting model info
print(beetle.model);

// Class structure
class Car {

  // Class properties - Variables
  String model = '';
  int year = 0;
}
~~~

### Adding procedures:
~~~Dart
// Instantiating object
Car beetle = new Car();

// Configuring object
beetle.model = 'New Beetle';

// presenting model info
beetle.printModel();

// Class structure
class Car {

  // Class properties - Variables
  String model = '';

  // Class procedures - Method/ Functions
  void printModel() {
    print('The model name is: ${this.model}');
  }
}
~~~

### Creating and use constructor:
~~~Dart
// Instantiating and configuring object
Car beetle = new Car('New Beetle', 2014);

// presenting model info
beetle.printModel();

// Class structure
class Car {

  // Class properties - Variables
  String model = '';
  int year = 0;

  Car(String model, int year) {
    this.model = model;
    this.year = year;
  }

  // Class procedures - Method/ Functions
  void printModel() {
    print('Model name: ${this.model}; \nYear of manufacture: ${this.year}');
  }
}
~~~

### Another way to use the constructor:
~~~Dart
// Instantiating and configuring object
Car beetle = new Car('New Beetle', 2014);

// Class structure
class Car {

  // Class properties - Variables
  String model = '';
  int year = 0;

  Car(this.model, this.year);
}
~~~

### Get and Set:
Obs: Only use when you want implements control.
~~~Dart
// Instantiating and configuring object
Car vitara = new Car('Vitara', 2014);
Car monza = new Car('Monza', 1997);

print(vitara.model);
print(monza.model);

// Class structure
class Car {

  // Class properties - Variables
  String _model = '';
  int year = 0;

  // Change the constructor to use set method
  Car(String model, this.year) {
    this.model = model;
  }

  void set model(String model) {
    if(model == 'Vitara') {
      this._model = 'GM Tracker';
    } else { 
      this._model = model;
    }
  }

  String get model {
    return this._model;
  }
  
}
~~~

### Inheritance:
~~~Dart

Vehicle generic = new Vehicle('Robust', 544);
generic.resume();

Car vectra = new Car('GM Vectra', 135, 4, 5);
vectra.resume();
  
class Vehicle {
  String model = '';
  int hp = 0;

  Vehicle(this.model, this.hp);

  void resume() {
    print('Model: ${this.model}\nHorse Power: ${this.hp}');
  }
}

class Car extends Vehicle {

  int ports = 0;
  int places = 0;

  Car(model, hp, this.ports, this.places) : super(model, hp);

}
~~~


### Inheritance with super and @override:
~~~Dart
Vehicle generic = new Vehicle('Robust', 544);
generic.resume();

Car vectra = new Car('GM Vectra', 135, 4, 5);
vectra.resume();

class Vehicle {
  String model = '';
  int hp = 0;

  Vehicle(this.model, this.hp);

  void resume() {
    print('\nModel: ${this.model}\nHorse Power: ${this.hp}');
  }
}

class Car extends Vehicle {
  int ports = 0;
  int places = 0;

  Car(model, hp, this.ports, this.places) : super(model, hp);
  
  @override
  void resume() {
    super.resume();
    print('Ports: ${this.ports}\nPlaces: ${this.places}\n');
  }

}
~~~

### Static use:
What's static? Static allow access an internal features without instantiate the class.
~~~Dart
print(Bakery.wheatBreadPrice);
//   print(Bakery.amountInCash); // Don't works
print(Bakery.getPriceToBreads(4));

class Bakery {
  static double wheatBreadPrice = 0.13;
  double amountInCash = 435.95;

  static double getPriceToBreads(int breads) => wheatBreadPrice * breads;
}
~~~

### Const and final:
Both are immutable, but have their particularities

Use const for values know at program time, final works, but prefer const.
When used in the class, static const
~~~Dart
const int bornDay = 3; // Const don't works for this
// final int bornDay = 3; 

print(bornDay);
~~~

Use final for values don't know at program time.
~~~Dart
// const DateTime a = new DateTime.now(); // Const don't works for this
final DateTime registerTime = new DateTime.now(); 

print(registerTime);
~~~

### Abstract class:
Used like a model class, we prevent it from being instantiated, defining that as an abstract class.
~~~Dart
Motocycle sahara = new Motocycle('Sahara', 35);
print('Model: ${sahara.model}, HP level: ${sahara.hp}');
sahara.showHpStatus();

Car mustang = new Car('Mustang GT', 350);
print('Model: ${mustang.model}, HP level: ${mustang.hp}');
mustang.showHpStatus();

//   It's not possible, because now Vehicle is an abstract class
//   Vehicle bus = new Vehicle('Marcopolo 235', 300);
//   print('Model: ${bus.model}, potencia: ${bus.hp}');

class Car extends Vehicle {
  Car(String model, int hp) : super(model, hp);
  
  @override
  void showHpStatus() {
    print('HP level: ${this.hp < 150 ? 'Low' : 'High'}');
  }
}

class Motocycle extends Vehicle {
  Motocycle(String model, int hp) : super(model, hp);
  
  @override
  void showHpStatus() {
    print('HP level: ${this.hp < 50 ? 'Low' : 'High'}');
  }
}

abstract class Vehicle {
  String model = '';
  int hp = 0;

  Vehicle(this.model, this.hp);
  
  void showHpStatus(); // Functioning as a kind of protocol
}
~~~

## Lists in Dart

### Simple string list:
~~~Dart
List<String> carOptions = ['Opel Omega 3.8 V6', 'Opel Vectra Millenium 2.2', 'VW Golf GTI 2.0 TSi', 'Ford Fusion'];

print(carOptions); // Print list content
print(carOptions.length); // Print list size
print(carOptions[0]); // Print first content of list
print(carOptions.contains('Ford Fusion')); // Print if contains Ford Fusion on the list
carOptions.add('Dodge challenger SRT'); // Adding 'Dodge challenger SRT' into the list
carOptions.insert(2, 'Ford Fiesta'); // Insert 'Ford Fiesta' on the third position on the list
carOptions.removeAt(4); // Remove value to the fifth position
print(carOptions.indexOf('VW Golf GTI 2.0 TSi')); // Print position number on the list where value equals 'VW Golf GTI 2.0 TSi'
print(carOptions[carOptions.length-1]); // Print last position content
print(carOptions.last); // Too print last position content

carOptions.forEach((String model) { // Printing each content of the list
  print(model);
});
~~~

### Object list:
~~~Dart
List<Book> books = [Book('iWoz', 2006), Book('Steve Jobs', 2011)];

print(books.length); // Print list size
print(books[0].name); // Print the name of the first content in the list
books.add(Book('Orange is the new black', 2010)); // Adding new book into the list at last position
books.insert(0, Book('Sapiens', 2014)); // Insert new book on the first position on the list
books.removeAt(3); // Remove book to the fourth position
print(books[books.length-1].name); // Print last position content book name
print(books.last.name); // Too print last position content book name

books.forEach((Book book) {
  print(book.name);
});
  
books.forEach((Book book) => print('${book.name} - ${book.year}'));

class Book {
  String name = '';
  int year = 0;

  Book(this.name, this.year);

  void showInfo() {
    print('Name: ${this.name}, \nYear: ${this.year}\n');
  }
}
~~~

## Dictionary (Map)

~~~Dart
Map<int, String> homeOptions = Map();
  
  homeOptions[0] = 'AP'; // Adding map key/ values
  homeOptions[1] = 'House';
  homeOptions[2] = 'Studio';
  
  print(homeOptions);
  print(homeOptions.keys);
  print(homeOptions.values);
  print(homeOptions[1]);

  const homeColors = {40: 'gray', 41: 'white', 42: 'Yellow', 43: 'Blue'};

  print(homeColors);
  homeOptions.addAll(homeColors); // Add all content in the homeColors to homeOptions
  homeOptions.remove(1); // Removing key and value where key equals 1
  homeColors.clear(); // Removing all values
~~~

## Handling numbers

### Absolute value (abs):
~~~Dart
double pi = -3.1415;
print(pi.abs()); // With .abs() the result will aways be positive
~~~

### Parse to int (toInt):
~~~Dart
double pi = 3.1415;
print(pi.toInt());
~~~

### Truncate:
~~~Dart
double pi = 3.1415;
print(pi.truncate()); // Similarity with toInt
~~~

### Parse to string (toString):
~~~Dart
double pi = 3.1415;
print('Pi value: ' + pi.toString());
~~~

### Parse to string limit cases (toStringAsFixed):
~~~Dart
double pi = 3.1415;
print('Pi value fixed: ' + pi.toStringAsFixed(2)); // Limit the decimal cases after point
~~~

### Round down (floor):
~~~Dart
double pi = 3.1415;
print(pi.floor());
~~~

### Round up (ceil):
~~~Dart
double pi = 3.1415;
print(pi.ceil());
~~~

### Between A and B (clamp):
~~~Dart
double pi = 3.1415;
print(pi.clamp(2,3)); // Find the closest integer number between A and B
print(pi.clamp(2,3));
~~~

### Round:
~~~Dart
double pi = 3.1415; // For example: Up to 1.49, it tends to be 1, above that, it tends to be 2.
print(pi.round());
~~~

### check if is negative (isNegative):
~~~Dart
double pi = 3.1415;
print('The number ' + (pi.isNegative ? 'is negative' : 'isn\'t negative'));
~~~
 
 ## Handling strings

 ### Upper case:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.toUpperCase);
 ~~~
 
### Lower case:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.toLowerCase);
 ~~~

### Remove the unnecessary empty spaces:
 ~~~Dart
 String name = '    Chuck Norris     ';
 print('[$name]');
 name = name.trim(); // remove all unnecessary spaces
 name = name.trimLeft(); // remove all left unnecessary spaces
 name = name.trimRight(); // remove all right unnecessary spaces
 print('[$name]');
 ~~~

### Check length:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.length);
 ~~~

### Fix length:
 ~~~Dart
 String name = 'Chuck Norris';
 name = name.padLeft(20, 'x'); // if length less than 20, add x to left until reaching 20
 name = name.padRight(30, 'x'); // if length less than 30, add x to right until reaching 30
 print(name);
 ~~~

### Check if contains:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.contains('ck'));
 ~~~

### Get substring:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.substring(2, 4));
 ~~~

### Get index of character:
 ~~~Dart
 String name = 'Chuck Norris';
 print(name.indexOf(' '));

 // With this, we can do...
 print('First name: ${name.substring(0, name.indexOf(' '))}');
 ~~~

### Split words:
 ~~~Dart
 String name = 'James Earl Jones';
 print(name.split(' '));

 // With this, we can do...
 List<String> listName;
 listName = (name.split(' '));
 print(listName);
 print('First name: ${listName[0]}');
 print('Last name: ${listName[listName.length-1]}');
 ~~~

 ## Enum

 ~~~Dart
 enum Fruit {
  Banana,
  Apple,
  Pineaple,
  Orange
 }

 //Sample use:
 Fruit fruit = Fruit.Apple;

 switch(fruit) {
   case Fruit.Banana:
   print('Did you get banana');
   break;

   case Fruit.Apple:
   print('Did you get apple');
   break;

   case Fruit.Pineaple:
   print('Did you get pineaple');
   break;

   case Fruit.Orange:
   print('Did you get orange');
   break;
 }
 ~~~