import 'package:test/test.dart';

import '../lib/gato.dart';

void main() {
  group('get', () {
    test('by path', () {
      Map<String, dynamic> map = {
        'a': {'b': 1}
      };

      expect(get<int>(map, 'a.b'), 1);
      expect(get(map, 'a.c'), null);
    });

    test('from empty map', () {
      Map<String, dynamic> map = {};

      expect(get(map, 'a'), null);
    });

    test('by coverter', () {
      Map<String, dynamic> map = {'name': 'John'};
      var person =
          get<Person>(map, 'name', converter: (value) => Person(value));

      expect(person is Person, true);
      expect(person.name, 'John');
    });
  });

  group('set', () {
    test('by path', () {
      Map<String, dynamic> map = {
        'a': {'b': 1}
      };

      map = set(map, 'a.b', 2);
      expect(map['a']!['b'], 2);
    });

    test('use <T>', () {
      Map<String, dynamic> map = {
        'a': {'b': 1}
      };

      map = set<String>(map, 'a.b', 'gato');
      expect(map['a']!['b'], 'gato');
    });
  });

  test('unset by path', () {
    Map<String, dynamic> map = {
      'a': {'b': 1}
    };

    map = unset(map, 'a.b');
    expect(map['a']!['b'], null);
  });
}

class Person {
  final name;

  Person(this.name);
}
