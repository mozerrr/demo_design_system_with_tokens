import 'dart:convert';

import 'package:flutter/painting.dart';
import 'package:friflex_api/raw_json.dart';

late Map<String, dynamic> json;

Map<String, dynamic> loadJson() {
  json = jsonDecode(rawJson);
  return json;
}

Color get primary {
  // "{premitive.dark.color.brown.500}"
  var ref = json['backgrounds']['interactive']['primary-default']['value'] as String;
  ref = ref.substring(1, ref.length - 1);
  //premitive/color/brown/500/value
  final path = ref.split('.')..add('value');
  final value = getValueByKeys(json, path);
  return colorFromHex(value);
  // final value = ref.
  // backgrounds/interactive/primary-default
}

Color colorFromHex(String hex) {
  // Убираем символ '#' и получаем два символа для каждого компонента
  String hexWithoutHash = hex.replaceAll('#', '');

  // Преобразуем компоненты в целые числа
  int alpha = int.parse(hexWithoutHash.substring(0, 2), radix: 16);
  int red = int.parse(hexWithoutHash.substring(2, 4), radix: 16);
  int green = int.parse(hexWithoutHash.substring(4, 6), radix: 16);
  int blue = int.parse(hexWithoutHash.substring(6, 8), radix: 16);

  return Color.fromARGB(alpha, red, green, blue);
}


dynamic getValueByKeys(Map<String, dynamic> map, List<String> keys) {
  if (keys.isEmpty) {
    return null; // Если ключи пусты, возвращаем null или можете изменить это на исключение
  }

  String currentKey = keys.first;

  // Если остались ключи, продолжаем рекурсию
  if (keys.length > 1) {
    if (map.containsKey(currentKey) && map[currentKey] is Map) {
      return getValueByKeys(map[currentKey], keys.sublist(1));
    } else {
      return null; // Если ключ не найден или это не Map, возвращаем null
    }
  } else {
    // Если ключ последний в списке, просто возвращаем его значение
    return map[currentKey];
  }
}

String get valueAsString {
  return '';
}

int get valueAsInt {
  return 0;
}

int get valueAsColorInt {
  return 0;
}