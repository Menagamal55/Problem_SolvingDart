//Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

import 'dart:io';
import 'dart:math';
void main()
{
  // Generate a random number between 1 and 100
  var random = Random();
  int numberToGuess = random.nextInt(100) + 1;

  int guess;
  int attempts = 0;

  print("Welcome to the Guess the Number game!");
  print("I have selected a number between 1 and 100.");

 // Keep asking until the guess is correct
  do {
    print("Enter your guess: ");
    String input = stdin.readLineSync()!;
    
    // Convert the input to an integer
    guess = int.tryParse(input) ?? 0;
    attempts++;
    
    if (guess < numberToGuess) {
      print("Your guess is too low.");
    } else if (guess > numberToGuess) {
      print("Your guess is too high.");
    } else {
      print("Congratulations! You've guessed the number correctly!");
    }
  } while (guess != numberToGuess);
  
  // Output the number of attempts
  print("You took $attempts guesses to find the correct number.");
}
