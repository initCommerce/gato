/// Sets the value at path of map.
///
/// Use dot notation in [path] to access nessted keys
///
/// Returns updated map
///
/// ```dart
/// Map map = {'a': {'b': 1}};
/// map = set(map, 'a.b', 2);
/// ```
Map<String, dynamic> set<T>(
  Map<String, dynamic>? map,
  String path,
  T value,
) {
  List<String> keys = path.split('.');

  if (keys.length == 1) {
    return Map<String, dynamic>.from({
      ...map ?? {},
      keys.removeAt(0): value,
    });
  }

  return Map<String, dynamic>.from({
    ...map ?? {},
    keys[0]: set(map![keys.removeAt(0)] ?? {}, keys.join('.'), value),
  });
}
