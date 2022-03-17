import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it_done/app/core/utils/extensions.dart';
import 'package:get_it_done/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:  EdgeInsets.all(4.0.wp),
              child: Text(
                'My List',
                style: TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
