import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color clubHouseColor = Color.fromARGB(255, 239, 237, 225);
// Color clubHouseBottomColor = Color.fromARGB(255, 239, 237, 225);
Color clubHouseBottomColor = Color.fromARGB(255, 87, 173, 105);

class Palette {
  static const Color background = Color(0xFFF0F0E4);
  static const Color secondaryBackground = Color(0xFFE7E4D3);
  static const Color green = Color(0xFF2AAF61);
}

class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

const List<User> _allUsers = [
  User(
    givenName: 'Marcus',
    familyName: 'Ng',
    imageUrl:
        'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  ),
  User(
    givenName: 'David',
    familyName: 'Brooks',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Jane',
    familyName: 'Doe',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Matthew',
    familyName: 'Hinkle',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    givenName: 'Amy',
    familyName: 'Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    givenName: 'Ed',
    familyName: 'Morris',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    givenName: 'Carolyn',
    familyName: 'Duncan',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    givenName: 'Paul',
    familyName: 'Pinnock',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      givenName: 'Elizabeth',
      familyName: 'Wong',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    givenName: 'James',
    familyName: 'Lathrop',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    givenName: 'Jessie',
    familyName: 'Samson',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

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

final List<Room> roomsList = [
  Room(
    club: 'Social Society',
    name: 'Welcome to Clubhouse 🎉 (Walkthrough with Q&A)',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'NYU girls roasting tech guys',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
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
      title: 'Flutter ClubHouse UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
        iconTheme: const IconThemeData(color: Colors.black),
        primaryColor: Colors.white,
        accentColor: Palette.green,
      ),
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
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
            children: [
              UpcomingRooms(upcomingRooms: upcomingRoomsList),
              const SizedBox(
                height: 12.0,
              ),
              ...roomsList.map((e) => RoomCard(room: e)),
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
                  SizedBox(width: 40),
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
                  SizedBox(width: 30),
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

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;
  const UpcomingRooms({Key? key, required this.upcomingRooms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Palette.secondaryBackground,
          borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 4.0, bottom: 4.0),
        child: Column(
          children: upcomingRooms
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: e.club.isNotEmpty ? 2.0 : 0),
                        child: Text(e.time),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (e.club.isNotEmpty)
                              Flexible(
                                child: Text(
                                  '${e.club}'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.0,
                                      ),
                                ),
                              ),
                            Flexible(
                              child: Text(
                                e.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class RoomCard extends StatelessWidget {
  final Room room;
  const RoomCard({Key? key, required this.room}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("enter room!");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${room.club} 🏡'.toUpperCase(),
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  room.name,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 28.0,
                              top: 20.0,
                              child: UserProfileImage(
                                imageURL: room.speakers[1].imageUrl,
                                size: 48,
                              ),
                            ),
                            UserProfileImage(
                              imageURL: room.speakers[0].imageUrl,
                              size: 48,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...room.speakers.map(
                            (e) => Text(
                              '${e.givenName} ${e.familyName} 💬',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        '${room.speakers.length + room.followedBySpeakers.length + room.others.length} ',
                                  ),
                                  const WidgetSpan(
                                    child: Icon(
                                      CupertinoIcons.person_fill,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/ ${room.speakers.length}',
                                  ),
                                  const WidgetSpan(
                                    child: Icon(
                                      CupertinoIcons.chat_bubble_fill,
                                      size: 18.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfileImage extends StatelessWidget {
  final String imageURL;
  final double size;

  const UserProfileImage({Key? key, required this.imageURL, this.size = 48.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2 - size / 18),
      child:
          Image.network(imageURL, height: size, width: size, fit: BoxFit.cover),
    );
  }
}
