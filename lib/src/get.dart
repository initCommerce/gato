/// Get value from a `Map` by path
///
/// Use dot notation in [path] to access nessted keys
///
/// Use [convertor] to cast the valeu to your custom type
///
/// Returns [T]
///
/// ```dart
/// Map map = {'a': {'b': 1}};
/// get(map, 'a.b');
/// ```
T get<T>(map, String path, {T Function(dynamic)? converter}) {
  List<String> keys = path.split('.');

  if (keys.length == 1) {
    return converter != null ? converter(map[keys[0]]) : map[keys[0]] as T;
  }

  return get(map[keys.removeAt(0)], keys.join('.'));
}
