import 'package:flutter/material.dart';

class TossBankCard {
  String? assetUrl;
  String? title;
  TossBankCard({this.assetUrl, this.title});
}

class TossBankCardWidget extends StatelessWidget {
  const TossBankCardWidget({
    Key? key,
    required this.tossBankCard,
  }) : super(key: key);

  final TossBankCard tossBankCard;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
