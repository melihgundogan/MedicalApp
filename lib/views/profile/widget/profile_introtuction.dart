import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class ProfileIntrutaction extends StatelessWidget {
  const ProfileIntrutaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Container(
      width: s.width / 1.1,
      height: s.height / 6.5,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: s.height / 20, horizontal: s.width / 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: CircleAvatar(
                child: Image.network(HomeNetworkImage().circleAvatarImage),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                MainText(
                  text: 'Melih Gundogan',
                  color: HomeColors().nameColor,
                  size: 20,
                  spacing: 1,
                ),
                MainText(
                  text: 'Male',
                  color: Colors.grey.shade500,
                  size: 13,
                  spacing: 1,
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: MainColors().lightBlue, borderRadius: BorderRadius.circular(16)),
    );
  }
}
