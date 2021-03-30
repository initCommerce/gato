/// Removes the property at path of map.
///
/// Use dot notation in [path] to access nessted keys
///
/// Returns updated map
///
/// ```dart
/// Map map = {'a': {'b': 1}, 'c': 2};
/// map = set(map, 'c'); // {'a': {'b': 1}}
/// ```
Map<String, dynamic> unset(Map<String, dynamic> map, String path) {
  List<String> keys = path.split('.');

  if (keys.length == 1) {
    map.remove(keys.removeAt(0));

    return map;
  }

  return Map<String, dynamic>.from({
    ...(map is Map ? map : {}),
    keys[0]: unset(map[keys.removeAt(0)], keys.join('.')),
  });
}
