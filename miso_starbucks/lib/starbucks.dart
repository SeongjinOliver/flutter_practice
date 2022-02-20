import 'package:flutter/material.dart';

/// Starbucks 메인 색상
Color starbucksPrimaryColor = Color.fromARGB(255, 83, 184, 138);

/// Starbucs 포인트 색상
Color starbucksAccentColor = Color.fromARGB(255, 199, 176, 121);

class Starbucks extends StatefulWidget {
  const Starbucks({Key? key}) : super(key: key);

  @override
  _StarbucksState createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex, // index 순서에 해당하는 child를 맨 위에 보여줌
        children: [
          StarbucksFirstPage(),
          StarbucksSecondPage(),
          StarbucksThirdPage(),
          Center(child: Text("Starbucks 네 번째 페이지")),
          Center(child: Text("Starbucks 다섯 번째 페이지")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // 현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지로 이동
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: starbucksPrimaryColor, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
        showSelectedLabels: false, // 선택된 항목 label 숨기기
        showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.redeem), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],
      ),
    );
  }
}

/// 첫 번째 페이지
class StarbucksFirstPage extends StatelessWidget {
  const StarbucksFirstPage({Key? key}) : super(key: key);

  /// 배경 이미지 URL
  final String backImg =
      "https://i.ibb.co/2Pz33q7/2021-12-16-12-21-42-cleanup.png";

  /// Frequency 이미지 URL
  final String frequencyImg = "https://i.ibb.co/QcVn97y/2021-12-16-1-33-11.png";

  /// 추천 메뉴
  final List<Map<String, String>> recommendMenu = const [
    {
      "name": "돌체쿠키라떼",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "name": "아이스 홀리데이 돌체 쿠키 라떼",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "name": "스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "name": "아이스 스노우 민트 초콜릿",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
    {
      "name": "스노우 민트 초콜릿 블렌디드",
      "imgUrl": "https://i.ibb.co/DKkV0rw/9200000003699-20211118143249044.jpg",
    },
  ];

  /// 크리스마스 이벤트 이미지 URL
  final String eventImg = "https://i.ibb.co/Fb0q43T/IMG-F9-BA5-CBCB476-1.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false, // 뒤로가기 버튼 숨기기
                pinned: true, // 아래로 스크롤시 일부영역을 남길것이다.
                snap: false, // 중간에 멈출 때 자동으로 AppBar를 펼쳐서 배경을 모두 보여줄지
                floating: true, // AppBar를 화면에 띄울지, 아니면 컬럼처럼 최 상단에 놓을지
                expandedHeight: 252, // 최대 확장되었을 때 높이
                backgroundColor: Colors.white,

                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Stack(
                    children: [
                      // 백그라운드 이미지
                      Positioned.fill(
                        bottom: 60,
                        child: Image.network(
                          backImg,
                          fit: BoxFit.fill,
                        ),
                      ),

                      // 배경 위 위젯
                      Positioned(
                        left: 24,
                        right: 24,
                        bottom: 60,
                        child: Column(
                          children: [
                            Text(
                              '한 해의 마무리,\n수고 많았어요💖',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 32),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "11 ★ until next Reward",
                                        style: TextStyle(
                                          color: starbucksAccentColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 16),
                                      ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        child: LinearProgressIndicator(
                                          backgroundColor: Colors.grey,
                                          value: 0.083,
                                          minHeight: 10,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            starbucksAccentColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16),
                                RichText(
                                  // textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "1",
                                        style: TextStyle(
                                          fontSize: 38,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " / ",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "12 ★",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: starbucksAccentColor,
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
                    ],
                  ),
                ), // 없앨 영역
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(52), // 영역 높이
                  child: SizedBox(
                    height: 52,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 12,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => print("What's New"),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_post_office_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "What's New",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            onTap: () => print("Coupon"),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.local_activity_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 8),
                                Text("Coupon",
                                    style: TextStyle(
                                      fontSize: 18,
                                    )),
                              ],
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () => print("Alarm"),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Icon(
                                      Icons.notifications_outlined,
                                      color: Colors.grey,
                                      size: 32,
                                    ),
                                    Positioned(
                                      right: 2,
                                      top: 2,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: starbucksPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ), // 남길 영역
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          frequencyImg,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),

                    // 추천 메뉴
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '유성진',
                              style: TextStyle(
                                fontSize: 25,
                                color: starbucksAccentColor,
                              ),
                            ),
                            TextSpan(
                              text: '님을 위한 추천 메뉴',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32),

                    // 추천 메뉴
                    SizedBox(
                      height: 150, // 높이를 가져야 ListView를 Column 안에 넣을 수 있음
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          final menu =
                              recommendMenu[index % recommendMenu.length];
                          print(index % recommendMenu.length);
                          final name =
                              menu["name"] ?? "이름"; // name이 null이면 "이름"을 저장
                          final imgUrl = menu["imgUrl"] ?? "";
                          return SizedBox(
                            width: 128,
                            child: Column(
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 52,
                                  backgroundImage: NetworkImage(imgUrl),
                                  backgroundColor: Colors.transparent,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    // Event
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 18,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          eventImg,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 18,
            right: 24,
            child: GestureDetector(
              onTap: () => print("Deliverys"),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: starbucksPrimaryColor,
                  borderRadius: BorderRadius.circular(64),
                ),
                child: Row(
                  children: [
                    Text(
                      "Deliverys",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.pedal_bike_outlined,
                      color: Colors.white,
                      size: 28,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 두 번째 페이지
class StarbucksSecondPage extends StatelessWidget {
  const StarbucksSecondPage({Key? key}) : super(key: key);

  /// 카드 이미지
  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";

  @override
  Widget build(BuildContext context) {
    final List<String> images = <String>[
      "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png",
      "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png",
      "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png"
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Pay',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.list,
              color: Colors.black,
            ),
            onPressed: () {
              print("Pay 우측 상단 아이콘");
            },
          )
        ],
      ),
      body: Column(
        children: [
          // Card
          Expanded(
            child: PageView.builder(
              controller: PageController(initialPage: 0),
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Image.network(cardImgUrl),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    // 그림자
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        // 광원의 위치를 중심(0, 0)보다 위쪽(0, 5)
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          /// Coupon & e-Gift Item
          Container(
            height: 72,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Coupon!!"),
                    child: Text(
                      "Coupon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12,
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => print("e-Gift Item!!"),
                    child: Text(
                      "e-Gift Item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// 세 번째 페이지
class StarbucksThirdPage extends StatelessWidget {
  const StarbucksThirdPage({Key? key}) : super(key: key);

  /// 전체 메뉴
  final List<Map<String, String>> menu = const [
    {
      "ko": "추천",
      "en": "Recommend",
      "imgUrl": "https://i.ibb.co/SwGPpzR/9200000003687-20211118142543832.jpg",
    },
    {
      "ko": "리저브 에스프레소",
      "en": "Reserve Espresso",
      "imgUrl": "https://i.ibb.co/JHVXZ72/9200000003690-20211118142702357.jpg",
    },
    {
      "ko": "리저브 드립",
      "en": "Reserve Drip",
      "imgUrl": "https://i.ibb.co/M91G17c/9200000003693-20211118142933650.jpg",
    },
    {
      "ko": "콜드브루",
      "en": "ColdBrew",
      "imgUrl": "https://i.ibb.co/jyZK4C9/9200000003696-20211118143125337.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Order",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search_outlined, color: Colors.grey),
              onPressed: () {
                print("Pay 우측 상단 아이콘!!");
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: false,
            indicatorColor: starbucksPrimaryColor,
            indicatorWeight: 4,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: "전체 메뉴"),
              Tab(text: "나만의 메뉴"),
              Tab(text: "🎂 홀케이크"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                final item = menu[index % menu.length];
                final ko = item["ko"] ?? "제목";
                final en = item["en"] ?? "title";
                final imgUrl = item["imgUrl"] ?? "";
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 21,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 52,
                        // Tip : circleAvatar 배경에 맞춰서 동그랗게 이미지 넣는 방법
                        backgroundImage: NetworkImage(imgUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ko,
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            en,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),

            // 나만의 메뉴
            Center(
              child: Text("나만의 메뉴"),
            ),
            // 홀케이크 예약
            Center(
              child: Text("홀케이크 예약"),
            ),
          ],
        ),
      ),
    );
  }
}
