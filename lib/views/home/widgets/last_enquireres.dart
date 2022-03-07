import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class LastEnquireres extends StatelessWidget {
  const LastEnquireres({
    Key key,
    @required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: CircleAvatar(
            child:
                Image.network(HomeNetworkImage().circleAvatarImage),
            radius: 30,
          ),
        ),
        SizedBox(
          width: s.width / 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'Anna Kowalsky',
              color: HomeColors().nameColor,
              size: 17,
            ),
            MainText(
              text: 'Video Consultation',
              color: Colors.grey.shade500,
              size: 13.5,
            ),
          ],
        )
      ],
    );
  }
}