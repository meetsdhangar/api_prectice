import 'package:api/controller/apiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/productmode.dart';

class products extends StatelessWidget {
  const products({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(apiController())..getproductlist();
    return Obx(
      () => controller.Productslist.length == 0
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text("Products"),
              ),
              body: ListView.builder(
                  itemCount: controller.Productslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${controller.Productslist[index].id}"),
                      title: Text("${controller.Productslist[index].title}"),
                      subtitle:
                          Text("${controller.Productslist[index].description}"),
                      trailing: TextButton(
                          onPressed: () {
                            Get.to(indata(
                              pro: controller.Productslist[index],
                            ));
                          },
                          child: Text("View Product")),
                    );
                  }),
            ),
    );
  }
}

class indata extends StatelessWidget {
  final Product pro;
  const indata({super.key, required this.pro});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "${pro.title}",
            style: TextStyle(fontSize: 20),
          ),
          Container(
            height: 230,
            width: MediaQuery.of(context).size.width,
            child: Image.network(pro.thumbnail),
          ),
          Text(
            "${pro.description}",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Stock ${pro.stock}",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  width: 205,
                ),
                Text(
                  '\$${pro.price}',
                  style: TextStyle(fontSize: 23, color: Colors.red),
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.green,
            height: 270,
            width: MediaQuery.of(context).size.width,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: pro.images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 250,
                        width: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(pro.images[index]),
                                fit: BoxFit.cover)),
                        //child: Image.network(pro.images[index])
                      ),
                    );
                  }),
            ),
          ),
          Center(
            child: Text(
              "${pro.brand}",
              style: TextStyle(fontSize: 25),
            ),
          )
        ]),
      ),
    ));
  }
}
