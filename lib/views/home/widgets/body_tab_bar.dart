
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class BodyTabBar extends StatelessWidget {
  const BodyTabBar({
    Key key,
    @required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: s.width / 1.1,
      height: s.height / 12,
      decoration: BoxDecoration(
        color: MainColors().lightBlue,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: s.width/ 2.7,
            height: s.height / 21,
            decoration: BoxDecoration(
              color: OnBoardColors.bgColor,
              borderRadius: BorderRadius.circular(36),
            ),
            child: MainText(
              text: 'Last enquiries',
              size: 13,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 150,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(36),
            ),
            child: MainText(
              text: 'Reports',
              color: HomeColors().nameColor,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}