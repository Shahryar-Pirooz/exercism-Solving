import 'dart:io';

import 'dart:math';

void main() {
  stdout.write('Enter your number: ');
  int number = int.parse(stdin.readLineSync()!);
  int numberLength = ArmstrongNumbers.calcNumberLength(number);
  stdout.write(ArmstrongNumbers.armstrongNumber(number, numberLength));
}

class ArmstrongNumbers {
  static String armstrongNumber(int number, int numberLength) {
    int sum = 0;
    int lastDigit = 0;
    int temp = number;
    while (temp > 0) {
      lastDigit = temp % 10;
      sum = sum + pow(lastDigit, numberLength) as int;
      temp ~/= 10;
    }
    if (number == sum)
      return '$number is an armstrong number';
    else
      return '$number is not an armstrong number';
  }

  static int calcNumberLength(int number) {
    int counter = 0;

    while (number > 0) {
      number = number ~/ 10;
      counter++;
    }
    return counter;
  }
}
