import 'dart:convert';

import 'package:api/Models/personmodel.dart';
import 'package:api/Models/postsmodel.dart';
import 'package:api/Models/productmode.dart';
import 'package:api/Models/quotsmodel.dart';
import 'package:api/Models/commentsmodel.dart';

import 'package:api/Models/todomodel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class apiController extends GetxController {
  RxList todoList = [].obs;
  gettododata() async {
    var api = 'https://dummyjson.com/todos';
    var responce = await http.get(Uri.parse(api));
    var data = jsonDecode(responce.body);
    var dadain = data['todos'];
    var list = dadain.map((m) => Todo.fromMap(m)).toList();
    todoList.clear();
    todoList.addAll(list);
  }

  RxList commentslist = [].obs;
  getcommentlist() async {
    var api = "https://dummyjson.com/comments";
    var response = await http.get(Uri.parse(api));
    var maindata = jsonDecode(response.body);
    var commentsdata = maindata['comments'];
    print(commentsdata);
    var mylist = commentsdata.map((m) => CommentModel.fromJson(m)).toList();
    commentslist.clear();
    commentslist.addAll(mylist);
    print(commentslist);
  }

  RxList quotslist = [].obs;
  getquotslist() async {
    var api = "https://dummyjson.com/quotes";
    var response = await http.get(Uri.parse(api));
    var maindata = jsonDecode(response.body);

    var quotesdata = maindata['quotes'];
    print(quotesdata);
    var mylist = quotesdata.map((q) => Quote.fromJson(q)).toList();
    print(mylist);
    quotslist.clear();
    quotslist.addAll(mylist);
  }

  RxList Productslist = [].obs;
  getproductlist() async {
    var api = "https://dummyjson.com/products";
    var response = await http.get(Uri.parse(api));
    var maindata = jsonDecode(response.body);
    var productdata = maindata['products'];
    print(productdata);
    var mylist = productdata.map((p) => Product.fromMap(p)).toList();
    print(mylist);
    Productslist.clear();
    Productslist.addAll(mylist);
  }

  RxList userslist = [].obs;
  getusers() async {
    var api = "https://dummyjson.com/users";
    var response = await http.get(Uri.parse(api));
    var maindata = jsonDecode(response.body);
    var userdata = maindata['users'];
    var mylist = userdata.map((u) => PersonModel.fromMap(u)).toList();
    print(mylist);
    userslist.clear();
    userslist.addAll(mylist);
  }

  RxList postslist = [].obs;
  getposts() async {
    var api = "https://dummyjson.com/posts";
    var response = await http.get(Uri.parse(api));
    var maindata = jsonDecode(response.body);
    var userdata = maindata['posts'];

    var mylist = userdata.map((a) => Post.fromMap(a)).toList();
    postslist.clear();
    postslist.addAll(mylist);
  }
}
