#Learning Flutter

Flutter use Dart language, your code structure contain `void main() {}`, yours content be executed.

##Main Dart variables types

###int (Integer):
int code = 1;
print(code);

int subscription;
subscription = 2;
print(subscription);

###double:
double pi = 3.14;
print(pi);

###String:
String name = 'Leon';
print(name);

###bool (Boolean):
bool available = true;
print(available);

###var/ dynamic (Undefined type):
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

Obs.: Give preference to previously typed variables.

##Concatenate variables

double dollarToReal = 4.50;
print('1 dollar worth $dollarToReal in real coin');

int workValue = 3;
print('5 * $workValue = ${5 * workValue}'); // With math operation
print('The work value was' + workValue.toString());
print('Double the work value is: ' + (workValue * 2).toString());

