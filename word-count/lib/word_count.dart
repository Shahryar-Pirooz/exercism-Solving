import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter a phrase: \n');
  String? phrase = stdin.readLineSync();
  if (phrase!.isNotEmpty) {
    WordCount(phrase.toLowerCase()).counter();
  }
}

class WordCount {
  String phrase;
  WordCount(this.phrase);

  void counter() {
    phrase = phrase.replaceAll(RegExp(r'\\n|\\t'), ' ');
    phrase = phrase.replaceAll(RegExp(r"[^\w\s]+"), '');
    Map<String, int> wordCounter = Map();
    Iterable<String> wordList = phrase.split(' ');
    wordList.forEach((String word) {
      if (wordCounter.containsKey(word)) {
        wordCounter[word] = wordCounter[word]! + 1;
      } else {
        wordCounter[word] = 1;
      }
    });
    wordCounter.forEach((key, value) {
      print('$key : $value');
    });
  }
}
