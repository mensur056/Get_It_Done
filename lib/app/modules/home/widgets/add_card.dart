import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it_done/app/core/utils/extensions.dart';
import 'package:get_it_done/app/modules/home/controller.dart';

import '../../../widget/icons.dart';

class AddCard extends StatelessWidget {
  AddCard({Key? key}) : super(key: key);
  final homeCtrl = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final icons = getIcons();
    var squareWidth = Get.width - 12.0.wp;
    return Container(
      height: squareWidth / 2,
      width: squareWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () async {
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Task Type',
            content: Form(
              key: homeCtrl.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.wp),
                    child: TextFormField(
                      controller: homeCtrl.editCtrl,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Title'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your task title';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0.wp),
                    child: Wrap(
                        spacing: 2.0.wp,
                        children: icons
                            .map(
                              (e) => Obx(
                                () {
                                  final index = icons.indexOf(e);
                                  return ChoiceChip(
                                    selectedColor: Colors.grey,
                                    backgroundColor: Colors.white,
                                    pressElevation: 0,
                                    label: e,
                                    selected: homeCtrl.chipIndex.value == index,
                                    onSelected: (bool selected) {
                                      homeCtrl.chipIndex.value =
                                          selected ? index : 0;
                                    },
                                  );
                                },
                              ),
                            )
                            .toList()),
                  )
                ],
              ),
            ),
          );
        },
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: const [8, 4],
          child: Center(
            child: Icon(
              Icons.add,
              size: 10.0.sp,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
