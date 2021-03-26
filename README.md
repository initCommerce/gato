# Lodash_utility
A dart utility library inspired by javascript lodash library.

## Get
Get value from a `Map` by path. Use dot notation in [path] to access nessted keys.

```dart
Map map = {'a': {'b': 1}};
var b = get(map, 'a.b');
```

## Set
Set value to a `Map` by path. Use dot notation in [path] to access nessted keys.

```dart
Map map = {'a': {'b': 1}};
map = set(map, 'a.b', 2);
```

## Unset
Unset a key from a `Map` by path. Use dot notation in [path] to access nessted keys

```dart
Map map = {'a': {'b': 1}, 'c': 2};
map = set(map, 'c'); // {'a': {'b': 1}}
```