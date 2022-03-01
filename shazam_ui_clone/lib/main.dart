import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final int _numDots = 3;
  late final TabController _controller;
  Color shazamCenterColor = Color.fromARGB(255, 120, 179, 240);

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _numDots, vsync: this);
  }

  // void _incrementCounter() {
  //   setState(() {
  //     (_controller.index == _numDots - 1)
  //         ? _controller.index = 0
  //         : _controller.index++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ytimg.com/vi/jAO0KXRdz_4/hqdefault.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
    ];
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(30),
      //   child: _tabPageSelector(),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment(
                1.0, 0.0), // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color.fromARGB(255, 33, 72, 156),
              Color.fromARGB(255, 120, 179, 255),
            ], // red to yellow
            tileMode: TileMode.clamp, // repeats the gradient over the canvas
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // _tabPageSelector(),
              // _wrap(
              //   context,
              //   _tabPageSelector(),
              // ),
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                _tabPageSelector(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  "Shazam하려면 탭하세요",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: shazamCenterColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 30,
                      color: shazamCenterColor,
                    ),
                  ),
                  child: Image.network(
                    "https://cdn.iconscout.com/icon/free/png-256/shazam-3-761709.png",
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 163, 239),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 12,
                      color: Color.fromARGB(255, 94, 163, 239),
                    ),
                  ),
                  child: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                ),
                // TabBarView(
                //   controller: _controller,
                //   children: [
                //     Text("1231"),
                //     Text('data'),
                //     Text('data'),
                //   ],
                // ),
              ]),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // Text('You are on index: ${_controller.index}'),
      //       TabPageSelector(controller: _controller),
      //     ],
      //   ),
      // ),
    );
  }

  // 112 168 232
  Widget _tabPageSelector() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: TabPageSelector(
          controller: _controller,
          color: Color.fromARGB(255, 112, 168, 232),
          selectedColor: Colors.white,
          indicatorSize: 10,
        ),
      ),
    );
  }

  Widget _wrap(BuildContext context, Widget widget) {
    return Container(
      child: widget,
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.red,
        ),
      ),
    );
  }

  Widget _child5(BuildContext context, Widget tabBar) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: [Text('asdasd')],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: tabBar,
      ),
    );
  }

  TabBar _tabBar1() {
    return const TabBar(
      tabs: [
        Text("View 1"),
        Text("View 2"),
        Text("View 3"),
      ],
      indicatorWeight: 5.0,
    );
  }
}
