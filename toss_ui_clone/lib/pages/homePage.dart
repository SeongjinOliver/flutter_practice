import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/toss_colors.dart';
import 'package:toss_ui_clone/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TossColor.grey1,
      appBar: AppBar(
        backgroundColor: TossColor.grey1,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Row(
          children: [
            Image.asset(
              "assets/toss_logo.png",
              width: 100,
              height: 45,
            ),
            // ImageIcon(

            //   // AssetImage("assets/toss_logo.png"),
            //   // color: Color(0xFF3A5A98),
            //   // color: Colors.black,
            // ),
          ],
        ),
      ),
      // body: ,
      // appBar: AppBar(
      //   // title: Row(
      //   //   // children: [],
      //   // ),
      // ),
    );
  }
}
