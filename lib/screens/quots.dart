import 'package:api/controller/apiController.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class quots extends StatelessWidget {
  const quots({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(apiController())..getquotslist();
    return Obx(
      () => controller.quotslist.length == 0
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text("quots"),
              ),
              body: ListView.builder(
                  itemCount: controller.quotslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${controller.quotslist[index].id}"),
                      title: Text("${controller.quotslist[index].quote}"),
                      subtitle: Text(
                        "${controller.quotslist[index].author}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
            ),
    );
  }
}
