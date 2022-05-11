import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  stdout.write('Enter your number: ');
  int? number = int.parse(stdin.readLineSync()!);
  if (number <= 0)
    stdout.write('You have to enter natural numbers ... ');
  else
    print(DifferenceOfSquares(number).difference());
}

class DifferenceOfSquares {
  num number;
  DifferenceOfSquares(this.number);

  num squareOfTheSum() {
    num sum = 0;
    for (var i = 1; i <= number; i++) {
      sum += i;
    }
    return pow(sum, 2);
  }

  num sumOfTheSquares() {
    num sum = 0;
    for (var i = 1; i <= number; i++) {
      sum += pow(i, 2);
    }
    return sum;
  }

  num difference() => squareOfTheSum() - sumOfTheSquares();
}
