// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:clubhouse_ui_clone/room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color clubHouseColor = Color.fromARGB(255, 239, 237, 225);
// Color clubHouseBottomColor = Color.fromARGB(255, 239, 237, 225);
Color clubHouseBottomColor = Color.fromARGB(255, 87, 173, 105);

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Flutter 🏡',
    name: 'Flutter Engage Recap 🔴',
    time: '3:00 PM',
  ),
  Room(
    club: 'New User Onboarding 🏡',
    name: 'Welcome to Clubhouse 👋',
    time: '7:00 PM',
  ),
  Room(
    club: '',
    name: 'Clubhouse Turns 1',
    time: '9:00 PM',
  ),
];

void main() {
  runApp(ClubHouse());
}

class ClubHouse extends StatelessWidget {
  const ClubHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 화면에 보이는 영역
    return FirstPage();
  }

  void upcomingRooms(List<Room> upcomingRooms) {}
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clubHouseColor,
      appBar: AppBar(
        backgroundColor: clubHouseColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                print("click");
              },
              icon: Icon(
                CupertinoIcons.compass,
                color: Colors.black,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {
                print("click mail");
              },
              icon: Icon(
                CupertinoIcons.envelope_open,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                print("click mail");
              },
              icon: Icon(
                CupertinoIcons.calendar,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                print("click mail");
              },
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () => print("my profile!!"),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                child: Image.network(
                  'https://user-images.githubusercontent.com/55625864/154793534-3d8a050a-1d7a-4af1-ae73-b95c2ff05a1a.png',
                  height: 33,
                  width: 33,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    // SizedBox(
                    //   width: 30,
                    // ),
                    SizedBox(
                      // width: 65,
                      child: Column(
                        children: [
                          Text.rich(
                            TextSpan(
                              text: '3:00 PM' + '    ',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Flutter 🏡',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text(
                                  "Flutter Engage Recap 🔴",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 50,
                    //     ),
                    //     Text("Flutter Engage Recap 🔴"),
                    //   ],
                    // ),

                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       'Flutter 🏡',
                    //       style: TextStyle(
                    //         fontSize: 13,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     Text(
                    //       'Flutter Engage Recap 🔴',
                    //       style: TextStyle(
                    //         fontSize: 15,
                    //         // fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       height: 10,
                    //     )
                    //   ],
                    // ),
                    // Expanded(child: Text("test"))
                  ],
                ),
                // child: InkWell(
                //   splashColor: clubHouseColor,
                //   onTap: () {
                //     debugPrint('Card tapped.');
                //   },
                //   child: const SizedBox(
                //     width: 300,
                //     height: 100,
                //     child: Text('A card that can be tapped'),
                //   ),
                // ),
              ),
              const SizedBox(height: 300.0),
              Text('data'),
              const SizedBox(height: 300.0),
              Text('data'),
              const SizedBox(height: 300.0),
            ],
          ),
          // Positioned(
          //   child: Container(),
          // ),
          // Positioned(
          //   child: Stack(),
          // ),
          Positioned(
              bottom: 60,
              child: Row(
                children: [
                  SizedBox(width: 35),
                  GestureDetector(
                    onTap: () {
                      print("버튼 클릭 됨");
                    },
                    child: Stack(
                      children: [
                        Icon(CupertinoIcons.circle_grid_3x3_fill),
                        Positioned(
                          right: 0,
                          top: 11,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: clubHouseBottomColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      print("+ start a room 버튼 클릭 됨");
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: clubHouseBottomColor,
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          // SizedBox(width: 3),
                          Text(
                            "Start a room",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SecondPage()),
                    ),
                    child: Icon(
                      CupertinoIcons.arrow_right_to_line,
                    ),
                  ),
                ],
              )),
          Positioned(
            child: Stack(),
          ),
        ],
      ),
      // body: Padding(
      //   padding: const EdgeInsets.symmetric(
      //     horizontal: 10,
      //     vertical: 10,
      //   ),
      //   child: Column(
      //     children: [
      //       Card(
      //         child: Row(
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             Container(
      //               width: 70,
      //               padding: EdgeInsets.all(1),
      //               child: Text(
      //                 '3:00 PM',
      //                 style: TextStyle(fontSize: 13),
      //               ),
      //             ),
      //             SizedBox(
      //               width: 10,
      //             ),
      //             Expanded(
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Text.rich(
      //                     TextSpan(
      //                       style: TextStyle(
      //                           fontSize: 10, fontWeight: FontWeight.bold),
      //                       text: 'Flutter',
      //                       children: <TextSpan>[
      //                         TextSpan(text: ' with '),
      //                         TextSpan(text: 'TextStyle.'),
      //                       ],
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  /// 전체 메뉴
  final List<Map<String, String>> chatList = const [
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
    {
      "name": "Oliver Yoo",
      "lastChatName": "You",
      "lastChat": "Hello!",
      "createdAt": "9:58 PM",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: clubHouseColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: clubHouseColor,
          automaticallyImplyLeading: true,
          // AbbBar back key color 변경
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "BACKCHANNEL",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                print("click ...");
              },
              child: Icon(CupertinoIcons.ellipsis),
            ),
            SizedBox(width: 27),
            GestureDetector(
              onTap: () {
                print("message click!");
              },
              child: Icon(CupertinoIcons.text_bubble_fill),
            ),
            SizedBox(width: 10),
          ],
          bottom: TabBar(
            isScrollable: false,
            labelColor: Colors.grey[800],
            indicatorColor: clubHouseBottomColor,
            labelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Requests"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                final item = chatList[index % chatList.length];
                final name = item["name"] ?? "name";
                final lastChatName = item["lastChatName"] ?? "lastChatName";
                final lastChat = item["lastChat"] ?? "lastChat";
                final createdAt = item["createdAt"] ?? "createAt";
                return ListTile(
                  leading: Image.network(
                      "https://user-images.githubusercontent.com/55625864/154793534-3d8a050a-1d7a-4af1-ae73-b95c2ff05a1a.png"),
                  title: Text(name),
                  subtitle: Text("${lastChatName}: ${lastChat}"),
                  trailing: Column(
                    children: [
                      Icon(Icons.chevron_right),
                      Text(createdAt),
                    ],
                  ),
                );
              },
            ),
            Center(
              child: Text(
                "👍 You're all good!\n You don't have new\n message requests.",
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
