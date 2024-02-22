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


