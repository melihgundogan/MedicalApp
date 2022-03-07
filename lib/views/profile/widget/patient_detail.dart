// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class PatientDetails extends StatelessWidget {
  const PatientDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: s.width / 1.1,
      height: s.height / 4.5,
      child: Column(
        children: [
          const Informations(
            title: 'Name',
            profile_info: 'Melih',
          ),
          const Informations(
            title: 'Surname',
            profile_info: 'Gundogan',
          ),
          const Informations(
            title: 'Date of birth',
            profile_info: '13/05/2000',
          ),
          const Informations(
            title: 'City',
            profile_info: 'Istanbul',
          ),
          const Informations(
            title: 'Country',
            profile_info: 'Turkey',
          ),
        ],
      ),
    );
  }
}

class Informations extends StatelessWidget {
  const Informations({
    Key key,
    this.title,
    this.profile_info,
  }) : super(key: key);

  final String title, profile_info;

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: s.height / 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MainText(
            text: title,
            color: Colors.grey.shade500,
            size: 13,
          ),
          MainText(
            text: profile_info,
            color: HomeColors().nameColor,
            size: 13,
          ),
        ],
      ),
    );
  }
}
