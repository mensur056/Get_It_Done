import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it_done/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            Center(
              child: Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
