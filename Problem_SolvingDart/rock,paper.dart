//Make a two-player Rock-Paper-Scissors game against computer.
import 'dart:io';
import 'dart:math';
void main() {
  // Welcome message
  print("Welcome to Rock-Paper-Scissors!");
  
  // Get Player 1's (user's) move
  String player1Move = getPlayerMove();

  // Get Player 2's (computer's) move
  String computerMove = getComputerMove();
  
  // Display the moves of both players
  print("Player 1 (You) chose: $player1Move");
  print("Player 2 (Computer) chose: $computerMove");
  
  // Determine and display the result of the game
  String result = determineWinner(player1Move, computerMove);
  print(result);

}
// Function to get Player 1's (user's) move
String getPlayerMove() 
{
  while (true) {
    print(" Please Enter your\ move (Rock, Paper, or Scissors): ");
    String move = stdin.readLineSync()!.toLowerCase();
    if (move == "rock" || move == "paper" || move == "scissors") {
      return move;
    }
    else {
      print("Invalid move. Please choose Rock, Paper, or Scissors.");
    }
  }
}
// Function to get Player 2's (computer's) move
String getComputerMove() {
  List<String> moves = ["rock", "paper", "scissors"];
  Random random = Random();
  int index = random.nextInt(moves.length);
  return moves[index];
}

// Function to determine the winner of the game
String determineWinner(String player1, String player2) {
  if (player1 == player2) {
    return "It's a tie!";
  }
  if ((player1 == "rock" && player2 == "scissors") ||
      (player1 == "paper" && player2 == "rock") ||
      (player1 == "scissors" && player2 == "paper")) {
    return "Player 1 (You) win!";
  } else {
    return "Player 2 (Computer) wins!";
  }
}