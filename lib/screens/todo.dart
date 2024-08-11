import 'package:api/controller/apiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class todo extends StatelessWidget {
  const todo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(apiController())..gettododata();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text("Todo List"),
        ),
        body: ListView.builder(
            itemCount: controller.todoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.todoList[index].todo),
              );
            }),
      ),
    );
  }
}
