// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:api/controller/apiController.dart';

import '../Models/commentsmodel.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controlller = Get.put(apiController())..getcommentlist();
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Comment Data"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: controlller.commentslist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controlller.commentslist[index].body),
                    trailing: TextButton(
                        onPressed: () {
                          Get.to(() => InDataScreen(
                                cmd: controlller.commentslist[index],
                              ));
                        },
                        child: Text("Details")),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InDataScreen extends StatelessWidget {
  final CommentModel cmd;
  const InDataScreen({super.key, required this.cmd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In Data"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(cmd.body), Text(cmd.postId.toString())],
      ),
    );
  }
}
