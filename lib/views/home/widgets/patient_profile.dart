import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';

class PatientProfiles extends StatelessWidget {
  const PatientProfiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AddProfile(),
        Row(
            children: List.generate(4, (index) {
          // ignore: prefer_const_constructors
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: s.width / 100),
            child: const Profile(),
          );
        })),
      ],
    );
  }
}

class AddProfile extends StatelessWidget {
  const AddProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: MainColors().appGreen,
      child: const Icon(
        Icons.add,
        size: 25,
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: ClipOval(child: Image.network(HomeNetworkImage().circleAvatarImage, fit: BoxFit.cover,)),
      radius: 29,
    );
  }
}
/*

*/