import 'package:api/Models/postsmodel.dart';
import 'package:api/controller/todocontroler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class posts extends StatelessWidget {
  const posts({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(todocontroler())..getposts();
    return Obx(
      () => controller.postslist.length == 0
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Center(child: Text("Posts")),
              ),
              body: ListView.builder(
                  itemCount: controller.postslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: Text("${controller.postslist[index].id}"),
                        title: Text("${controller.postslist[index].title}"),
                        subtitle: Text("${controller.postslist[index].body}"),
                        trailing: TextButton(
                            onPressed: () {
                              Get.to(indata(
                                pos: controller.postslist[index],
                              ));
                            },
                            child: Text("ViewMore")));
                  }),
            ),
    );
  }
}

class indata extends StatelessWidget {
  final Post pos;
  const indata({super.key, required this.pos});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${pos.id}"),
            SizedBox(
              height: 10,
            ),
            Text("${pos.title}"),
            SizedBox(
              height: 10,
            ),
            Text("${pos.body}"),
            SizedBox(
              height: 10,
            ),
            Text("${pos.userId}"),
            SizedBox(
              height: 10,
            ),
            Text("${pos.tags[0]}")
          ],
        ),
      ),
    ));
  }
}
