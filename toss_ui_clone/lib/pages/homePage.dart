import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/toss_colors.dart';
import 'package:toss_ui_clone/model/tileText.dart';

// const List<TileText> topContainer = [
//   TileText(
//     bigTitle: '',
//     image: '',
//     title: '',
//     subTitle: '',
//   ),
//   TileText(
//     bigTitle: '',
//     image: '',
//     title: '',
//     subTitle: '',
//   ),
// ];

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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                "assets/toss_appbar_icon_1.png",
                width: 48,
                height: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(
                "assets/toss_appbar_icon_2.png",
                width: 35,
                height: 45,
              ),
            ),
            Image.asset(
              "assets/toss_appbar_icon_3.png",
              width: 30,
              height: 45,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              children: [
                TopContainerView(),
                SizedBox(height: 12),
                TossBank(),
                SizedBox(height: 12),
                Asset(),
                SizedBox(height: 12),
                Consumption(),
                SizedBox(height: 12),
                BottomContainerView(),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('?????? ?????????!');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('?????? ?????????'),
                        ),
                      ),
                      Container(
                        color: TossColor.bluegrey,
                        width: 1,
                        height: 12,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('?????? ??????!');
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('?????? ??????'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: AppBar(
      //   // title: Row(
      //   //   // children: [],
      //   // ),
      // ),
    );
  }
}

class TopContainerView extends StatelessWidget {
  const TopContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TileText tileText = TileText(
      bigTitle: '',
      image: 'assets/third_page_icon_1.png',
      title: '??????, ?????? ????????? ???????????????',
      subTitle: '?????? ?????? ????????????',
    );
    return GestureDetector(
      onTap: () => print("?????? ?????? ?????? ???????????? ??????!"),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListTile(
          leading: Image.asset(
            tileText.image,
            width: 35,
          ),
          title: Text(
            tileText.title,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
            ),
          ),
          subtitle: Text(
            tileText.subTitle,
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue[700],
            ),
          ),
          trailing: Icon(
            CupertinoIcons.chevron_forward,
            color: Colors.grey[500],
            size: 20,
          ),
        ),
      ),
    );
  }
}

class TossBank extends StatelessWidget {
  const TossBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TileText tileText = TileText(
      bigTitle: '????????????',
      image: 'assets/third_page_icon_2.png',
      title: '???????????? ????????????',
      subTitle: '?????? ?????? 40,300??? ?????????',
    );
    return GestureDetector(
      onTap: () => print("?????? ?????? ?????? ???????????? ??????!"),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, top: 15),
              child: Text(
                tileText.bigTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                tileText.image,
                width: 35,
              ),
              title: Text(
                tileText.title,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
              subtitle: Text(
                tileText.subTitle,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                CupertinoIcons.chevron_forward,
                color: Colors.grey[500],
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Asset extends StatelessWidget {
  const Asset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TileText> tileTextList = [
      TileText(
        bigTitle: '??????',
        image: 'assets/third_page_icon_3.png',
        title: '???????????? ??????',
        subTitle: '? ???',
      ),
      TileText(
        bigTitle: '',
        image: 'assets/third_page_icon_4.png',
        title: '??????????????? ??????',
        subTitle: '? ???',
      )
    ];
    TileText creditLine = TileText(
      bigTitle: '',
      image: 'assets/third_page_icon_5.png',
      title: '??????, 41??? ????????? ?????????',
      subTitle: '??? ?????? ?????? ?????? ??????',
    );
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 15),
            child: Text(
              '??????',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...tileTextList.map(
            (e) => TileListInButtonContainer(
              tileText: e,
              isButton: true,
              buttonName: '??????',
            ),
          ),
          Divider(),
          GestureDetector(
            onTap: () => print("??? ?????? ?????? ?????? ??????"),
            child: TileListInButtonContainer(
              tileText: creditLine,
              isButton: false,
              buttonName: '??????',
            ),
          ),
        ],
      ),
    );
  }
}

class Consumption extends StatelessWidget {
  const Consumption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<TileText> tileTextList = [
      TileText(
        bigTitle: '',
        image: 'assets/third_page_icon_7.png',
        title: '?????? ??? ??? ??????',
        subTitle: '?????? ?????? ??????',
      ),
      TileText(
        bigTitle: '',
        image: 'assets/third_page_icon_6.png',
        title: '?????? ?????? ?????? ??????',
        subTitle: '?????? ??????',
      )
    ];
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 15),
            child: Text(
              '??????',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TileListInButtonContainer(
              tileText: tileTextList[0], isButton: true, buttonName: '??????'),
          Divider(),
          GestureDetector(
            onTap: () => print("??? ?????? ?????? ?????? ??????"),
            child: TileListInButtonContainer(
                tileText: tileTextList[1], isButton: false, buttonName: '??????'),
          ),
        ],
      ),
    );
  }
}

class TileListInButtonContainer extends StatelessWidget {
  const TileListInButtonContainer({
    Key? key,
    required this.tileText,
    required this.isButton,
    required this.buttonName,
  }) : super(key: key);

  final TileText tileText;
  final bool isButton;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        tileText.image,
        width: 35,
      ),
      title: Text(
        tileText.title,
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey[600],
        ),
      ),
      subtitle: Text(
        tileText.subTitle,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: isButton == true
          ? ElevatedButton(
              onPressed: () => print("${buttonName}!"),
              child: Text(
                buttonName,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.grey[350]),
            )
          : null,
    );
  }
}

class BottomContainerView extends StatelessWidget {
  const BottomContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 110,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '1??? ??????',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "??? ??????\n?????? ??????",
                      style: TextStyle(
                        color: TossColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Spacer(),
                        Image.asset('assets/third_page_icon_7.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 110,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              margin: EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '?????? ??????',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "??? ?????????\n??????",
                      style: TextStyle(
                        color: TossColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Spacer(),
                        Image.asset('assets/third_page_icon_8.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 110,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: TossColor.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      '??????',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "?????????\n??????",
                      style: TextStyle(
                        color: TossColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Spacer(),
                        Image.asset('assets/third_page_icon_5.png'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// class BankContainer extends StatelessWidget {
//   final TileText tileText;
//   const BankContainer({Key? key, required this.tileText}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => print("?????? ?????? ?????? ???????????? ??????!"),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16.0),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 13, top: 15),
//                 child: tileText.bigTitle != ''
//                     ? Text(
//                         tileText.bigTitle,
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       )
//                     : SizedBox(height: 0.01),
//               ),
//               ListTile(
//                 leading: Image.asset(
//                   tileText.image,
//                   width: 35,
//                 ),
//                 title: Text(
//                   tileText.title,
//                   style: TextStyle(
//                     fontSize: 13,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 subtitle: Text(
//                   tileText.subTitle,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.blue[700],
//                   ),
//                 ),
//                 trailing: Icon(
//                   CupertinoIcons.chevron_forward,
//                   color: Colors.grey[500],
//                   size: 20,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
