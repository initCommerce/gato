# Gato
![gato-logo](https://user-images.githubusercontent.com/8446770/113517430-2cd8bf00-9595-11eb-93ba-260ef9a4d551.png)

[![Version](https://img.shields.io/pub/v/gato.svg)](https://pub.dev/packages/gato)
![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)

Gato is a dart utility library inspired by javascript lodash library.

**Show some ❤️ and star the repo to support the project**

## Installation
**1. Depend on it**

Add `gato: ^0.0.3` to your `pubspec.yaml` dependencies:

```yaml
dependencies:
  gato: ^0.0.3
```

**2. Import it**

Now in your Dart code, you can use:
```dart
import 'package:gato/gato.dart' as gato;
```

## Map functions
### Get
Get value from a `Map` by path. Use dot notation in [path] to access nessted keys.
```dart
gato.get<T>(Map<String, dynamic> map, String path, {T Function(dynamic)? converter})
```

**Arguments**

- map *(`Map<String, dynamic>`)*: The map you want to get value from.
- path *(`String`)*: The path of the property to get.
- converter *(`T Function(dynamic)?`)*: The function to cast the value to a custom type

**Returns**

- *`<T>|null`*: Returns the resolved value or `null` if the `path` is not found.

**Example**
```dart
Map map = {'a': {'b': 1}, 'c': '0xFFB74093'};
var b = gato.get(map, 'a.b');
var b = gato.get<int>(map, 'a.b');

Color color = gato.get<Color>(map, 'c', converter: (value) => Color(int.parse(value)));
```

### Set
Sets the value at path of map. If a portion of path doesn't exist, it's created.
```dart
Map<String, dynamic> set<T>(Map<String, dynamic> map, String path, T value)
```

**Arguments**

- map *(`Map<String, dynamic>`)*: The map to modify.
- path *(`String`)*: The path of the property to set.
- value *(`T`)*: The value to set.

**Returns**

- *`Map<String, dynamic>`*: Returns updated map.

**Example**
```dart
Map map = {'a': {'b': 1}};
map = gato.set(map, 'a.b', 2);
or
map = gato.set<int>(map, 'a.b', 2);
```

### Unset
Removes the property at path of map.
```dart
Map<String, dynamic> unset(Map<String, dynamic> map, String path)
```

**Arguments**

- map *(`Map<String, dynamic>`)*: The map to modify.
- path *(`String`)*: The path of the property to remove.

**Returns**

- *`Map<String, dynamic>`*: Returns updated map.

**Example**
```dart
Map map = {'a': {'b': 1}, 'c': 2};
map = gato.set(map, 'c'); // {'a': {'b': 1}}
```
