import '../lib/gato.dart' as gato;

void main() {
  Map<String, dynamic> map = {
    'a': {'b': 1},
    'c': '0xFFB74093',
  };

  print(gato.get(map, 'a.b'));

  map = gato.set(map, 'a.c', 2);

  print(gato.get(map, 'a.c'));
}
