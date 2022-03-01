import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/toss_colors.dart';
import 'package:toss_ui_clone/pages/banefitPage.dart';
import 'package:toss_ui_clone/pages/homePage.dart';

void main() {
  runApp(const TossApp());
}

class TossApp extends StatelessWidget {
  const TossApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Toss(),
    );
  }
}

class Toss extends StatefulWidget {
  const Toss({Key? key}) : super(key: key);

  @override
  State<Toss> createState() => _TossState();
}

class _TossState extends State<Toss> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: const [
          HomePage(),
          // BanefitPage(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: TossColor.grey2, spreadRadius: 0, blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (newIndex) {
              print("selected newIndex : $newIndex");
              setState(() {
                currentIndex = newIndex;
              });
            },
            backgroundColor: TossColor.grey1,
            selectedItemColor: TossColor.bluegrey, // 선택된 아이콘 색상
            unselectedItemColor: TossColor.grey2, // 선택되지 않은 아이콘 색상
            showSelectedLabels: true, // 선택된 항목 label 숨기기
            showUnselectedLabels: true, // 선택되지 않은 항목 label 숨기기
            type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "홈",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_photo_alternate),
                label: "혜택",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_shipping_rounded),
                label: "송금",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "주식",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "전체",
              ),
              // BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            ],
          ),
        ),
      ),
    );
  }
}
