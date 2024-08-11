import 'package:api/Models/personmodel.dart';

import 'package:api/controller/apiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class users extends StatelessWidget {
  const users({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(apiController())..getusers();
    return Obx(
      () => controller.userslist.length == 0
          ? Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Center(child: Text("Users List")),
              ),
              body: ListView.builder(
                  itemCount: controller.userslist.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text("${controller.userslist[index].id}"),
                      title: Text("${controller.userslist[index].firstName}"),
                      subtitle: Text("${controller.userslist[index].lastName}"),
                      trailing: TextButton(
                          onPressed: () {
                            Get.to(inner(person: controller.userslist[index]));
                          },
                          child: Text("Show details")),
                    );
                  }),
            ),
    );
  }
}

class inner extends StatelessWidget {
  final PersonModel person;
  const inner({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("${person.id}"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("${person.firstName}"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("${person.maidenName}"),
                  SizedBox(
                    width: 20,
                  ),
                  Text("${person.lastName}"),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text("Age:-${person.age}"),
              SizedBox(
                height: 5,
              ),
              Text("Gender:-${person.gender}"),
              SizedBox(
                height: 5,
              ),
              Text("Email:-${person.email}"),
              SizedBox(
                height: 5,
              ),
              Text("phone:-${person.phone}"),
              SizedBox(
                height: 5,
              ),
              Text("UserName:-${person.username}"),
              SizedBox(
                height: 5,
              ),
              Text("Password:-${person.password}"),
              SizedBox(
                height: 5,
              ),
              Text("Birthdate:-${person.birthDate}"),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.network(
                  person.image,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Blood Group:-${person.bloodGroup}"),
              SizedBox(
                height: 5,
              ),
              Text("Height:-${person.height}"),
              SizedBox(
                height: 5,
              ),
              Text("Weight:-${person.weight}"),
              SizedBox(
                height: 5,
              ),
              Text("Eye Color:-${person.eyeColor}"),
              SizedBox(
                height: 5,
              ),
              Text(
                "Hairs :-",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Colors:- ${person.hair.color}"),
              SizedBox(
                height: 5,
              ),
              Text("Type:- ${person.hair.type}"),
              SizedBox(
                height: 5,
              ),
              Text("Domain:-${person.domain}"),
              SizedBox(
                height: 5,
              ),
              Text("IP:-${person.ip}"),
              SizedBox(
                height: 5,
              ),
              Text(
                "Addresh :-",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("${person.address.address}"),
              SizedBox(
                height: 5,
              ),
              Text("${person.address.city}"),
              SizedBox(
                height: 5,
              ),
              Text("${person.address.coordinates.lat}"),
              SizedBox(
                height: 5,
              ),
              Text("${person.address.coordinates.lng}"),
              SizedBox(
                height: 5,
              ),
              Text("PostalCode:-${person.address.postalCode}"),
              SizedBox(
                height: 5,
              ),
              Text("State:-${person.address.state}"),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
