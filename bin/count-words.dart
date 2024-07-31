void main() {
  filterCharacters('today');
}

Map<String, int>? filterCharacters(String paragraph) {
  Map<String, int?> returnMap = {};

  List<String> wordsArr = paragraph.split('');
  wordsArr.sort((a, b) => a.compareTo(b));

  String currentChar = wordsArr[0];

  for (int i = 0; i <= wordsArr.length - 1; i++) {
    if (currentChar == wordsArr[i]) {
      returnMap[currentChar] =
          returnMap[currentChar] == null ? returnMap[currentChar]! + 1 : 1;
    } else {
      currentChar = wordsArr[i];
    }
  }

  print(returnMap);
  return null;
}
