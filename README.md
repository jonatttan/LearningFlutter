# Learning Flutter

Flutter use Dart language, your code structure contain `void main() {}`, yours content be executed.

## Main Dart variables types

### int (Integer):
int code = 1;</br>
print(code);

int subscription;</br>
subscription = 2;</br>
print(subscription);

### double:
double pi = 3.14;</br>
print(pi);

### String:
String name = 'Leon';</br>
print(name);

### bool (Boolean):
bool available = true;</br>
print(available);

### var/ dynamic (Undefined type):
var prod;</br>
prod = 55;</br>
print(prod);

prod = 'pen'; // Allowed change value/type because don't attributed value on the create</br>
print(prod);

var lumen = 678;</br>
lumen = 'dark'; // Don't allowed, because value is attributed on the creation

dynamic humidity = 5; // Most recommended in this case</br>
humidity = 'no';</br>
print(humidity);

Obs.: Give preference to previously typed variables.

## Concatenate variables

double dollarToReal = 4.50;</br>
print('1 dollar worth $dollarToReal in real coin');

int workValue = 3;</br>
print('5 * $workValue = ${5 * workValue}'); // With math operation</br>
print('The work value was' + workValue.toString());</br>
print('Double the work value is: ' + (workValue * 2).toString());

## Mathematical operations

int number1 = 5;</br>
int number2 = 10;

print('Value from number1: $number1');</br>
print('Value from number2: $number2');

int addition = number1 + number2;</br>
print('Addition: $addition');

int subtraction = number1 - number2;</br>
print('Subtraction: $subtraction');

int multiplication = number1 * number2;</br>
print('Multiplication: $multiplication');

double division = number1 / number2;</br>
print('Division: $division');

int divisionIntegerPart = number1 ~/ number2;</br>
print('Division integer part: $divisionIntegerPart');

int restOfDivision = number1 % number2;</br>
print('Rest of division: $restOfDivision');

## Increment/ decrement variables (++, --):

int val;</br>
val = 10;

val = val + 1; // Increment one to val</br>
print(val);</br>
val += 2; // Increment two to val</br>
print(val);

val = val - 2; // Decrement two to val</br>
print(val);</br>
val -= 1; // Decrement one to val

print(val++); // Print content val and increment</br>
print(val);</br>
print(++val); // Increment and print content val

print(val--); // Print content val and decrement</br>
print(val);</br>
print(--val); // Decrement and print content val