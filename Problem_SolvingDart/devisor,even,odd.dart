import 'dart:io';
void main()
{
print("please enter number");
int num=int.parse(stdin.readLineSync()!);
if (num%2==0)
{
print("${num} is even");
}
else
{
print("$num is odd");
}
}
//*******************************************

/*4  create a program that asks the user for a number and then prints out a list of all the divisors of that number.

If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.*/

/*
import 'dart:io';

void main()
{
print("please enter number");
int num =int.parse(stdin.readLineSync()!);
List <int> a =[];
for (var i = 0; i <= num; i++) 
{
  if (num /i ==0)
  {
   a.add(i) ;
  }
}
print("the dividor of $num is $a");
}
*/