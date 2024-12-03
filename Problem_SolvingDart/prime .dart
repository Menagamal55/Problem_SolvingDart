import 'dart:io';
import 'dart:math';

void main() {
  // Ask the user for a number
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is prime
  if (number <= 1) {
    print("$number is not a prime number.");
  } else {
    bool isPrime = true;
    
    // Check for factors up to the square root of the number
    for (int i = 2; i <= sqrt(number).toInt(); i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }

    // Print result
    if (isPrime) {
      print("$number is a prime number.");
    } else {
      print("$number is not a prime number.");
    }
  }
}
