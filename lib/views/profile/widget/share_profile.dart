import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Container(
      width: s.width / 1.1,
      height: s.height / 10,
      decoration: BoxDecoration(
        color: OnBoardColors.bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainText(
              text: 'Share your \npatient profile',
              size: 13,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: s.width / 8,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: s.width / 2.8,
                height: s.height / 10,
                child: const MainText(
                  text: 'Share profile',
                  size: 13,
                ),
                decoration: BoxDecoration(
                  color: MainColors().appGreen,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
