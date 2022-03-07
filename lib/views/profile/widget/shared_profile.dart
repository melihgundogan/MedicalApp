import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedProfile extends StatelessWidget {
  const SharedProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return SizedBox(
      width: s.width / 1.1,
      height: s.height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: s.width/ 4,
            height: s.height/15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: MainColors().lightBlue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('8 Dec', style: GoogleFonts.roboto(color: HomeColors().nameColor, fontWeight: FontWeight.w500)),
                Text('8:30', style: GoogleFonts.roboto(color: HomeColors().nameColor),)
              ],
            ),
          ),
          SizedBox(
            width: s.width/20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainText(
                text: 'Anna Kowalsky',
                color: HomeColors().nameColor,
                size: 17,
              ),
              MainText(
                text: '7 views',
                color: MainColors().appGreen,
                size: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
