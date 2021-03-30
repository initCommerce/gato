/// Get value from a `Map` by path
///
/// Use dot notation in [path] to access nessted keys
///
/// Returns [T]
///
/// ```dart
/// Map map = {'a': {'b': 1}};
/// get(map, 'a.b');
/// ```
T get<T>(map, String path) {
  List<String> keys = path.split('.');

  if (keys.length == 1) {
    return map[keys.removeAt(0)] as T;
  }

  return get(map[keys.removeAt(0)], keys.join('.'));
}
