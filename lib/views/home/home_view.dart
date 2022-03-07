library home_view;

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/views/home/widgets/body_tab_bar.dart';
import 'package:fsc_ibb/views/home/widgets/last_enquireres.dart';
import 'package:fsc_ibb/views/home/widgets/patient_profile.dart';
import 'package:fsc_ibb/views/home/widgets/upcoming_consultation.dart';
import 'package:fsc_ibb/widgets/custom_widgets/detail_title.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:fsc_ibb/widgets/general_widgets/bottom_navigation_bar.dart';
import 'package:fsc_ibb/widgets/general_widgets/vertical_gap.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

part 'home_view_top.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: HomeViewTop(context),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const DetailTitle(title: 'Upcoming consultations'),
                const UpcomingConsultations(),
                // ignore: prefer_const_constructors
                VerticalGap(s: s),
                const DetailTitle(title: 'Patient profiles'),
                const PatientProfiles(),
                VerticalGap(s: s),
                BodyTabBar(s: s),
                VerticalGap(s: s),
                LastEnquireres(s: s),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavigationAppBar(),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}


