
//Write a program (function) that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates
import 'dart:math';
import 'dart:io';
void main() {
  final random = Random();
  
  // Get user input for list size and range, for more customization.
  print("Enter the size of the list:");
  int size = int.parse(stdin.readLineSync()!);
  
  print("Enter the maximum value for random numbers:");
  int maxValue = int.parse(stdin.readLineSync()!);
  
  List<int> l1 = generateRandomList(size, maxValue, random);
  print("Original List: $l1");
  
  List<int> cleanedList = cleanList(l1);
  print("Cleaned list (duplicates removed): $cleanedList");
}

// Function to generate a list of random integers
List<int> generateRandomList(int size, int maxValue, Random random) {
  return List.generate(size, (_) => random.nextInt(maxValue));
}

// Function to remove duplicates from a list
List<int> cleanList(List<int> list) {
  return list.toSet().toList(); // Remove duplicates by converting to a Set
}
