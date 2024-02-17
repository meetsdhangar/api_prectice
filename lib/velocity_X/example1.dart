import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            'This is flutter'.text.bold.amber600.make(),
            Container(
              height: 30,
              width: 50,
              child: Text("123"),
            ).box.padding(EdgeInsets.only(left: 30)).red200.makeCentered(),
            [
              Text("VelocityX is Super").px12(),
              Text("Sample Text").px12(),
              Text("Yet, Another Sample Text").px12(),
            ].hStack().scrollHorizontal().p20(),
            VxBox(child: Text("Meet").centered())
                //.alignment(Alignment(20, 10))
                .padding(Vx.m12)
                .red500
                .make(),

            // VxCard(("Dhangar"..text.make())).red100.makeCentered();

            VxCard("meet".text.make()).red500.make().centered(),
            // VxScrollVertical(
            //   physics: AlwaysScrollableScrollPhysics(),
            //   child: <Widget>[
            //     'First Text'.text.make().p(10),
            //     'Second Text'.text.make()
            //   ].vStack(),
            // ),
            "Meet"
                .text
                .green900
                .size(20)
                .fontWeight(FontWeight.w500)
                .underline
                .heightSnug
                .lineHeight(3)
                .make(),

            VxCircle(
              radius: 70,
              backgroundColor: Vx.green400,
              child: 'fluter'.text.size(20).red700.makeCentered(),
            ),
            SizedBox(
              height: 8,
            ),
            VxEllipse(
              width: 100,
              height: 50,
              child: 'Abcd'.text.size(25).makeCentered(),
            ),
            SizedBox(
              height: 10,
            ),
            VxTicket(
              height: 40,
              width: 70,
              child: 'Abcd'.text.white.makeCentered(),
            ),
            Text(
              "Name",
              style: TextStyle(color: Colors.green),
            ),
            20.heightBox,

            "Name".text.lineThrough.green900.make(),
            Container(child: "Name".text.green900.make())
                .box
                .height(30)
                .width(50)
                .red400
                .make(),

            // HStack([
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            //   Text("Name1", style: TextStyle(color: Colors.green)),
            //   Text("Name", style: TextStyle(color: Colors.green)),
            // ]).scrollHorizontal().p(50),

            // "Text"
            //     .text
            //     .make()
            //     .centered()
            //     .box
            //     .yellow100
            //     .height(60)
            //     .width(60)
            //     .make(),

            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.red,
            //   child: Text("Flutter").centered(),
            // )

            // VxOrderedList(
            //   ["Name", "Flutter", "widget"],
            //   type: VxListType.upperRoman,
            // ),
            // VxUnorderedList(["Name", "Flutter", "widget"]),
            // VxScrollHorizontal(
            //   physics: AlwaysScrollableScrollPhysics(),
            //   child: Row(
            //     children: [
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv"),
            //       Text("123"),
            //       Text("zxcv")
            //     ],
            //   ),
            // )
            // VxCircle(
            //   radius: 50,
            //   backgroundColor: Colors.green,
            // ),
            //"Flutter".text.makeCentered().circle(radius: 70),
            VxArc(
                edge: VxEdge.bottom,
                arcType: VxArcType.convex,
                height: 150,
                child: Container(
                  color: Colors.red,
                  height: 150,
                  width: context.screenWidth,
                  //   child: Text("zxcv"),
                )),
            10.heightBox,

            // Text("zxcv")
            //     .centered()
            //     .circle(radius: 70, backgroundColor: Colors.red)
            //     .shadow,
          ],
        ),
      ),
    );
  }
}
