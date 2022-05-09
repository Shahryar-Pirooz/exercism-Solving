import 'dart:io';

void main() {
  stdout.write('Enter a word (Scrabble): ');
  String? word = stdin.readLineSync();
  if (word!.isEmpty) word = 'Scrabble';
  print('________ \n\n ${getWord(word = word)}');
}

int getWord(String? word) {
  int score = 0;
  word = word!.toLowerCase();
  word.runes.forEach((element) {
    var char = String.fromCharCode(element);
    switch (char) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
      case 'l':
      case 'n':
      case 'r':
      case 's':
      case 't':
        score++;
        print("$char = 1");
        break;

      case 'd':
      case 'g':
        score += 2;
        print("$char = 2");
        break;

      case 'b':
      case 'c':
      case 'm':
      case 'p':
        score += 3;
        print("$char = 3");
        break;
      case 'f':
      case 'h':
      case 'v':
      case 'w':
      case 'y':
        score += 4;
        print("$char = 4");
        break;
      case 'k':
        score += 5;
        print("$char = 5");
        break;
      case 'j':
      case 'x':
        score += 8;
        print("$char = 8");
        break;
      case 'q':
      case 'z':
        score += 10;
        print("$char = 10");
        break;
      default:
        print("$char = 0");
        break;
    }
  });
  return score;
}


/**
 * Letter                           Value
A, E, I, O, U, L, N, R, S, T       1
D, G                               2
B, C, M, P                         3
F, H, V, W, Y                      4
K                                  5
J, X                               8
Q, Z                               10
 */