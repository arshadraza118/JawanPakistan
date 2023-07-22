import 'dart:math';

void main() {
  //Q1.Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
  num length = 9;
  num breadth = 9;
  if (length == breadth) {
    print("it is a square");
  } else {
    print("it is a rectangle");
  }
  ;

  //Q2 Take two variables and store age then using if/else condition to determine oldest and youngest among them.
  int agePerson1 = 10;
  int agePerson2 = 10;
  if (agePerson1 > agePerson2) {
    print("Person1 is older and Person2 is younger among them");
  } else if (agePerson1 == agePerson2) {
    print("both are equal");
  } else {
    print("Person1 is younger and Person2 is older among them");
  }
  ;

  /*Q3.A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
Number of classes held = 16,
Number of classes attended = 10,
and print percentage of class attended.
Is student is allowed to sit in exam or not? */
  int numberOfClassesheld = 16;
  int numberOfClassesAttended = 10;
  num percentageOfClassesAttended =
      (numberOfClassesAttended / numberOfClassesheld) * 100;
  print("$percentageOfClassesAttended%");
  if (percentageOfClassesAttended >= 75) {
    print("You are allowed to sit in Exam");
  } else {
    print("you are not allowed to sit in Exam");
  }
  ;
/*Q4: Create integer variable assign any year to it and check if a year is leap year or not.
If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
i.e: Use % ( modulus ) operator.*/

  int year = 206;
  if (year % 4 == 0) {
    print('it is a leap year');
  } else if (year % 100 == 0 && year % 4 == 0) {
    print('it is a leap year');
  } else {
    print('it is not a leap year');
  }
  ;

  /*Q5 Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp < 0 then Freezing weather
temp 0-10 then Very Cold weather
temp 10-20 then Cold weather
temp 20-30 then Normal in Temp
temp 30-40 then Its Hot
temp >=40 then Its Very Hot */

  num temperature = 38;
  if (temperature < 0) {
    print('Freezing weather');
  } else if (temperature >= 0 && temperature < 10) {
    print('Very Cold weather');
  } else if (temperature >= 10 && temperature < 20) {
    print('Cold weather');
  } else if (temperature >= 20 && temperature < 30) {
    print('Normal in Temp');
  } else if (temperature >= 30 && temperature < 40) {
    print('Its hot');
  } else if (temperature >= 40) {
    print('Its very hot');
  }
  ;

//Q6 Write a program to check whether an alphabet is a vowel or consonant.

  String alphabet = "a";
  if (alphabet == 'a' ||
      alphabet == 'A' ||
      alphabet == 'e' ||
      alphabet == 'E' ||
      alphabet == 'i' ||
      alphabet == 'I' ||
      alphabet == 'o' ||
      alphabet == 'O' ||
      alphabet == 'u' ||
      alphabet == 'U') {
    print('It is a vowel');
  } else {
    print('It is a consonant');
  }
  ;

  /*Q7 Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

Unit    Charge/unit
upto 199    @1.20
200 and above but less than 400    @1.50
400 and above but less than 600    @1.80
600 and above             @2.00;

Test Data :
id: 1001
name: James
units: 800
Expected Output :
Customer IDNO :1001
Customer Name :James
unit Consumed :800
Amount Charges @Rs. 2.00 per unit : 1600.00
Net Bill Amount : 1600.00*/

  print("Electricity Bill");
  int id = 1001;
  String nam = "James";
  num unit = 800;
  print("Customer IDNO: $id");
  print('Customer Name: $nam');
  print('unit Consumed: $unit');
  num a = unit * 1.20;
  num b = unit * 1.50;
  num c = unit * 1.80;
  num d = unit * 2.20;
  String e = a.toStringAsFixed(2);
  String f = b.toStringAsFixed(2);
  String g = c.toStringAsFixed(2);
  String h = d.toStringAsFixed(2);
  if (unit > 0 && unit <= 199) {
    print('Amount Charges @Rs. 1.20 per unit : $e');
  } else if (unit > 199 && unit <= 400) {
    print('Amount Charges @Rs. 1.50 per unit : $f');
  } else if (unit > 400 && unit <= 600) {
    print('Amount Charges @Rs. 1.80 per unit : $g');
  } else if (unit >= 600) {
    print('Amount Charges @Rs. 2.00 per unit : $h');
  }
  ;
  if (unit > 0 && unit <= 199) {
    print('Net Bill Amount : $e');
  } else if (unit > 199 && unit <= 400) {
    print('Net Bill Amount  : $f');
  } else if (unit > 400 && unit <= 600) {
    print('Net Bill Amount : $g');
  } else if (unit >= 600) {
    print('Net Bill Amount : $h');
  }

  /* Q8 Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
i.e: Percentage should be rounded upto 2 decimal places only.*/

  String name = 'Arshad Raza';
  int rollNo = 13;
  int clas = 16;
  print('Student name : $name');
  print('Studentroll no. : $rollNo');
  print('Class : $clas');

  double maths = 90;
  double physics = 85.25;
  double computer = 75;
  double english = 79.9;
  double chemistry = 80;
  int totalMarks = 500;
  num obMarks = maths + english + physics + computer + chemistry;
  num perc = (obMarks / totalMarks) * 100;
  String percentage = perc.toStringAsFixed(2);
  print('percentage:$percentage %');
  print('Total Marks = $totalMarks');
  print('Ontained Marks = $obMarks');
  if (perc >= 80) {
    print('Grade Ontain = A+1');
  } else if (perc >= 70 && perc < 80) {
    print('Grade Ontain = A');
  } else if (perc >= 60 && perc < 70) {
    print('Grade Ontain = B');
  } else if (perc >= 50 && perc < 60) {
    print('Grade Ontain = C');
  } else if (perc >= 40 && perc < 50) {
    print('Grade Ontain = E');
  } else if (perc < 60) {
    print('Grade Ontain = -');
  }
  ;

  // Q9 Check if the number is even or odd, If number is even then check if this is divisible by 5 or not & if number is odd then check if this is divisible by 7 or not.

  int numb = 5;
  if (numb % 2 == 0) {
    print('it is even number');
  } else {
    print('it is odd number');
  }
  ;
  if (numb % 2 == 0 && numb % 5 == 0) {
    print('it is divisible by 5');
  } else if (numb % 2 == 0 && numb % 5 != 0) {
    print('it is not divisible by 5');
  } else if (numb % 2 != 0 && numb % 7 == 0) {
    print('it is divisible by 7');
  } else if (numb % 2 != 0 && numb % 7 != 0) {
    print('it is not divisible by 7');
  }

  // Q10Write a program that takes three numbers from the user and prints the greatest number & lowest number.

  int number1 = 1;
  int number2 = 5;
  int number3 = 3;

  if (number1 >= number2 && number1 >= number3) {
    print('Greatest number is $number1');
  } else if (number2 >= number1 && number2 >= number3) {
    print('Greatest number is $number2');
  } else {
    print('Greatest number is $number3');
  }
  if (number1 <= number2 && number1 <= number3) {
    print('lowest number is $number1');
  } else if (number2 <= number1 && number2 <= number3) {
    print('lowest number is $number2');
  } else {
    print('low number is $number3');
  }
  ;
//Q11 Write a program to calculate root of any number.
 
  num x = 4;
  num y = 1/2;
  num z = pow(x, y);
  print('root of $x is $z');
  
  
  /*Q12  Write a program to convert Celsius  to Fahrenheit   .
i.e: Temperature in degrees Fahrenheit (°F) = (Celsius (°C) * 9/5 Temperature in degrees) + 32*/  
 
double temp = 35.5;
  num tempF = (temp * (9/5)) + 32;
 print ('temperature in °F = $tempF °F');
 }
