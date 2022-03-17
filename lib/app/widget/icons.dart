import 'package:flutter/cupertino.dart';
import 'package:get_it_done/app/core/values/colors.dart';
import '../core/values/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(
      IconData(personIcon, fontFamily: 'MaterialIcons',),
      color: purple,size: 30,
    ),
    Icon(
      IconData(workIcon, fontFamily: 'MaterialIcons'),
      color: pink,size: 30,
    ),
    Icon(
      IconData(movieIcon, fontFamily: 'MaterialIcons'),
      color: green,size:30,
    ),
    Icon(
      IconData(sportIcon, fontFamily: 'MaterialIcons'),
      color: yellow,size: 30,
    ),
    Icon(
      IconData(travelIcon, fontFamily: 'MaterialIcons'),
      color: blue,size: 30,
    ),
    Icon(
      IconData(shopIcon, fontFamily: 'MaterialIcons'),
      color: lightBlue,size: 30,
    )
  ];
}
