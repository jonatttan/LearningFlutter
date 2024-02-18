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

print('');
~~~Dart
~~~