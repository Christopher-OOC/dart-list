void main() {
  const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
  //strings.sort((a, b) => a.length - b.length);

  var shortest = strings[0];
  var longest = strings[0];

  for (String string in strings) {
    shortest = string.length < shortest.length ? string : shortest;
    longest = string.length > longest.length ? string : longest;
  }

  print(shortest);
  print(longest);
}
