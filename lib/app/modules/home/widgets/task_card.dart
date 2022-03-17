import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it_done/app/core/utils/extensions.dart';
import 'package:get_it_done/app/modules/home/controller.dart';
import '../../../data/models/task.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TaskCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  final Task task;

  TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = HexColor.fromHex(task.color);
    final squareWidth = Get.width - 12.0.wp;
    return Container(
      height: squareWidth / 2,
      width: squareWidth / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(
                0,
                7,
              ),
              blurRadius: 7),
        ],
      ),
      margin: EdgeInsets.all(3.0.wp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          StepProgressIndicator(
            // TODO change after finish todo CRUD
            totalSteps: 100,
            padding: 0,
            currentStep: 80,
            size: 5,
            selectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                colors: [],
                end: Alignment.bottomRight),
          )
        ],
      ),
    );
  }
}
