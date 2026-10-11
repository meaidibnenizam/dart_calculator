
import 'dart:io';

void main() {
  while (true) {
    print('\n=== DART CALCULATOR ===');
    print('1. Addition (+)');
    print('2. Subtraction (-)');
    print('3. Multiplication (*)');
    print('4. Division (/)');
    print('5. Exit');

    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Goodbye!');
      break;
    }

    if (!['1', '2', '3', '4'].contains(choice)) {
      print('Invalid option!');
      continue;
    }

    stdout.write('Enter first number: ');
    double? a = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Enter second number: ');
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null) {
      print('Please enter valid numbers.');
      continue;
    }

    switch (choice) {
      case '1':
        print('Result: ${a + b}');
        break;
      case '2':
        print('Result: ${a - b}');
        break;
      case '3':
        print('Result: ${a * b}');
        break;
      case '4':
        if (b == 0) {
          print('Cannot divide by zero!');
        } else {
          print('Result: ${a / b}');
        }
        break;
    }
  }
}