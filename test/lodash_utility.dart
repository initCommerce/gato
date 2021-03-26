import 'package:test/test.dart';

import '../lib/lodash_utility.dart';

void main() {
  test('get by path', () {
    Map<String, dynamic> map = {
      'a': {'b': 1}
    };

    expect(get(map, 'a.b'), 1);
    expect(get(map, 'a.c'), null);
  });

  test('set by path', () {
    Map<String, dynamic> map = {
      'a': {'b': 1}
    };

    map = set(map, 'a.b', 2);
    expect(map['a']!['b'], 2);
  });

  test('unset by path', () {
    Map<String, dynamic> map = {
      'a': {'b': 1}
    };

    map = unset(map, 'a.b');
    expect(map['a']!['b'], null);
  });
}
