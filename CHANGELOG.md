## 0.0.5+1

* Update docs

## 0.0.4

* Fix #1
* Set and Unset to an empty map

## 0.0.3+3

* Edit readme

## 0.0.3+2

* Add logo to readme

## 0.0.3+1

* Edit docs

## 0.0.3

* Add `converter` option to `get` method

**Example:**
```dart
Map<String, dynamic> map = {'color': '0xFFB74093'};

Color color = get<Color>(map, 'color', converter: (value) => Color(value));
```
## 0.0.2

* Fix `get` and `set` by type issue
* Update docs

## 0.0.1

* Init lodash dart