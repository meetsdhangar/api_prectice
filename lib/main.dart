import 'package:api/screens/comments.dart';
import 'package:api/screens/posts.dart';
import 'package:api/screens/product.dart';
import 'package:api/screens/quots.dart';
import 'package:api/screens/todo.dart';
import 'package:api/screens/users.dart';
import 'package:api/velocity_X/example1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const posts(),
    );
  }
}
