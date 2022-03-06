import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/toss_colors.dart';
import 'package:toss_ui_clone/widgets/toss_bank_card_widget.dart';

final List<TossBankCard> tossBankCardList = [
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: 'NH농협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: 'KB국민'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '카카오뱅크'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '신한'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '우리'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: 'IBK기업'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: '하나'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '새마을'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '대구'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '부산'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: '우체국'),
  TossBankCard(assetUrl: 'assets/third_page_icon_2.png', title: '신협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_3.png', title: '수협'),
  TossBankCard(assetUrl: 'assets/third_page_icon_4.png', title: '광주'),
  TossBankCard(assetUrl: 'assets/third_page_icon_5.png', title: '전북'),
  TossBankCard(assetUrl: 'assets/third_page_icon_1.png', title: '중국공상'),
];

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // 그리드 뷰 스크롤 방지
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: tossBankCardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PracWidget2(
                        assetUrl: tossBankCardList[index].assetUrl ?? '',
                        title: tossBankCardList[index].title ?? '',
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      '증권사 선택',
                      style: TextStyle(color: TossColor.grey2),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(), // 그리드 뷰 스크롤 방지
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: tossBankCardList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PracWidget2(
                        assetUrl: tossBankCardList[index].assetUrl ?? '',
                        title: tossBankCardList[index].title ?? '',
                      );
                    },
                  )
                ],
              ),
            ),
            SafeArea(
              child: Container(
                height: 100,
                color: TossColor.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "어디로 돈을 보낼까요?",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                        color: TossColor.grey1,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 42,
                            decoration: BoxDecoration(
                              color: TossColor.grey1,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              '추천',
                              style: TextStyle(
                                color: TossColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 42,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: TossColor.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              '계좌',
                              style: TextStyle(
                                color: TossColor.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 42,
                            decoration: BoxDecoration(
                              color: TossColor.grey1,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(
                              '연락처',
                              style: TextStyle(
                                color: TossColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PracWidget2 extends StatelessWidget {
  const PracWidget2({
    Key? key,
    required this.assetUrl,
    required this.title,
  }) : super(key: key);
  final String assetUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: TossColor.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Expanded(
            child: Image.asset(
              '$assetUrl',
            ),
          ),
          Expanded(
            child: Text(
              '$title',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
