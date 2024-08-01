void main() {
  Map<String, int?> filters =
      filterCharacters('What is your name? My name is olojede christopher.');

  print(filters);
}

Map<String, int?> filterCharacters(String paragraph) {
  Map<String, int?> returnMap = {};

  List<String> wordsArr = paragraph.split('');
  wordsArr.sort((a, b) => a.compareTo(b));

  String currentChar = wordsArr[0];

  for (int i = 0; i <= wordsArr.length - 1; i++) {
    if (currentChar == wordsArr[i]) {
      returnMap[currentChar] =
          returnMap.containsKey(currentChar) ? returnMap[currentChar]! + 1 : 1;
      if (i != wordsArr.length - 1) {
        currentChar = wordsArr[i + 1];
      }
    }
  }

  return returnMap;
}
