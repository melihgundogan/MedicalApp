import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class UpcomingConsultations extends StatelessWidget {
  const UpcomingConsultations({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final s = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          JoinTheCall(s: s),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(10, (index) {
              return WaitForCall(s: s);
            }),
          ),
        ],
      ),
    );
  }
}

class JoinTheCall extends StatelessWidget {
  const JoinTheCall({
    Key key,
    @required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: s.width / 2.45,
        height: s.height / 3.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: OnBoardColors.bgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: ClipOval(child: Image.network(HomeNetworkImage().circleAvatarImage, fit: BoxFit.cover,)),
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const MainText(
                        text: '17:45',
                        size: 12,
                      ),
                      const MainText(
                        text: '7 Dec',
                        size: 12,
                        fontWeight: FontWeight.normal,
                        spacing: 1,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: s.height / 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s.width/16),
                child: const MainText(
                  text: 'Melih \nGundogan',
                  size: 15,
                ),
              ),
              SizedBox(
                height: s.height / 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s.width/16),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: s.width / 2.5,
                    height: s.height / 25,
                    child: const MainText(
                      text: 'Join the call',
                      size: 12,
                      spacing: 1,
                    ),
                    decoration: BoxDecoration(
                      color: MainColors().appGreen,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WaitForCall extends StatelessWidget {
  const WaitForCall({
    Key key,
    @required this.s,
  }) : super(key: key);

  final Size s;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: s.width / 2.45,
        height: s.height / 3.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: MainColors().lightBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: ClipOval(child: Image.network(HomeNetworkImage().circleAvatarImage, fit: BoxFit.cover,)),
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      MainText(
                        text: '8:30',
                        size: 12,
                        color: MainColors().appGreen,
                      ),
                      MainText(
                        text: '8 Dec',
                        size: 12,
                        fontWeight: FontWeight.normal,
                        spacing: 1,
                        color: MainColors().grey,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: s.height / 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s.width/16),
                child: MainText(
                  text: 'Melih \nGundogan',
                  size: 15,
                  color: HomeColors().nameColor,
                ),
              ),
              SizedBox(
                height: s.height / 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: s.width/16),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: s.width / 2.5,
                    height: s.height / 25,
                    child: MainText(
                      text: 'Wait for call',
                      size: 12,
                      spacing: 1,
                      color: HomeColors().nameColor,
                    ),
                    decoration: BoxDecoration(
                      color: MainColors().white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

