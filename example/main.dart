import '../lib/lodash.dart';

void main() {
  Map<String, dynamic> map = {
    'a': {'b': 1}
  };

  print(get(map, 'a.b'));
  map = set(map, 'a.c', 2);
  print(get(map, 'a.c'));
}
