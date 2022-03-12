import 'package:flutter/material.dart';
import 'package:get_it_done/app/modules/home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Get It Done",
      home: HomePage(),
    );
  }
}
