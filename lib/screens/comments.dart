import 'package:api/Models/commentsmodel.dart';
import 'package:api/controller/apiController.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class comments extends StatelessWidget {
  const comments({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(apiController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text("Comments List"),
        ),
        body: ListView.builder(
            itemCount: controller.commentslist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("${controller.commentslist[index].id}"),
                title: Text("${controller.commentslist[index].body}"),
                trailing: TextButton(
                    onPressed: () {
                      Get.to(InnerData(
                        mycomment: controller.commentslist[index],
                        mystring: "asdf",
                      ));
                    },
                    child: Text("Enter")),
              );
            }),
      ),
    );
  }
}

class InnerData extends StatelessWidget {
  final String mystring;
  final CommentModel mycomment;
  const InnerData({super.key, required this.mycomment, required this.mystring});

  @override
  Widget build(BuildContext context) {
    print(mycomment);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('id = ${mycomment.id}'),
            Text('Title: ${mycomment.body}'),
            Text('User Info'),
            Text('Username: ${mycomment.user.username}'),
            Text("Mystring:  ${mystring}")
          ],
        ),
      ),
    );
  }
}
