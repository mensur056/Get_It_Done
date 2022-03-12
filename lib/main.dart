import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it_done/app/modules/home/view.dart';
import 'package:get_storage/get_storage.dart';
void main() async{ await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(debugShowCheckedModeBanner: false,
      title: "Get It Done",
      home: HomePage(),
    );
  }
}
