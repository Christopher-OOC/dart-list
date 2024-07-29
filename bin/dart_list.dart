import '../lib/dart_list.dart' as dart_list;

void main(List<String> arguments) {
  List<String> list = ['Olojede', 'Christopher'];
  print(list);
  print(list.first);
  print(list.last);
  print(list.isEmpty);

  print('Hello world: ${dart_list.calculate()}!');
}
