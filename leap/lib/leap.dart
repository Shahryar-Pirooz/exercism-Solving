import 'dart:io';

void main() {
  stderr.write('Enter a year: ');
  int year = int.parse(stdin.readLineSync()!);
  if (year == 0 || year.isNegative) {
    stderr.write('input error');
  } else {
    if (isLeap(year))
      stdout.write('$year is a leap year');
    else
      stdout.write('$year is not a leap year');
  }
}

bool isLeap(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0)
        return true;
      else
        return false;
    } else
      return true;
  } else
    return false;
}
