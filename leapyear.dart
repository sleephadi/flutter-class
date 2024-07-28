import 'dart:io';

bool isLeapyear(int year) {
  if (year % 4 == 0) {
    if (year % 100 == 0) {
      if (year % 400 == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  } else {
    return false;
  }
}

void main() {
  print('enter year:');
  int? year = int.parse(stdin.readLineSync()!);
  if (isLeapyear(year)) {
    print('the year $year is a leap year');
  } else {
    print('the year $year is not a leap year ');
  }
}

// void main() {
//   print('enter year:');
//   int year = int.parse(stdin.readLineSync()!);
//   if (year % 4 == 0) {
//     print('the year $year you entered is leapyear ');
//   } else {
//     print("the year $year isn't the leap year ");
//   }
// }
