library profile_view;

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/views/profile/widget/patient_detail.dart';
import 'package:fsc_ibb/views/profile/widget/profile_introtuction.dart';
import 'package:fsc_ibb/views/profile/widget/share_profile.dart';
import 'package:fsc_ibb/views/profile/widget/shared_profile.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:fsc_ibb/widgets/general_widgets/bottom_navigation_bar.dart';
import 'package:stacked/stacked.dart';
import 'profile_view_model.dart';

part 'profile_view_top.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (BuildContext context, ProfileViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: MainText(
              text: 'Profile details',
              color: HomeColors().nameColor,
              size: 16,
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            toolbarHeight: s.height / 8,
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: s.width / 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ProfileIntrutaction(),
                SizedBox(
                  height: s.height / 30
                ),
                const ShareProfile(),
                SizedBox(
                  height: s.height / 30
                ),
                MainText(
                  text: 'Patient details',
                  color: HomeColors().nameColor,
                  size: 20,
                ),
                const PatientDetails(),
                MainText(
                  text: 'Shared profile',
                  color: HomeColors().nameColor,
                  size: 20,
                ),
                const SharedProfile(),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigationAppBar(),
        );
      },
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
