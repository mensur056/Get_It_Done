import 'package:flutter/cupertino.dart';
import 'package:get_it_done/app/core/values/colors.dart';
import '../core/values/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: purple,
    ),
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: pink,
    ),
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: blue,
    ),
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,
    )
  ];
}
