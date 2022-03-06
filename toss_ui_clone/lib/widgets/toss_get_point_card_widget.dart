import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_ui_clone/config/toss_colors.dart';

class TossGetPointCard {
  String? assetUrl;
  String? title;
  String? subtitle;
  TossGetPointCard({
    this.assetUrl,
    this.title,
    this.subtitle,
  });
}

class TossGetPointCardWidget extends StatelessWidget {
  const TossGetPointCardWidget({
    Key? key,
    required this.tossGetPointCard,
  }) : super(key: key);

  final TossGetPointCard tossGetPointCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: 40,
          child: Image.asset(
            '${tossGetPointCard.assetUrl}',
            width: 100,
            height: 45,
          ),
        ),
        title: Text(
          '${tossGetPointCard.title}',
          style: TextStyle(
            color: TossColor.bluegrey,
            fontSize: 10,
            fontWeight: FontWeight.w300,
          ),
        ),
        subtitle: Text(
          '${tossGetPointCard.subtitle}',
          style: TextStyle(
            color: TossColor.blue,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        trailing: Icon(CupertinoIcons.chevron_forward),
      ),
    );
  }
}
