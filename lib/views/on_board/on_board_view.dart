library on_board;

import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/utils/network.dart';
import 'package:fsc_ibb/views/on_board/widget/on_board_photo.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';
import 'package:stacked/stacked.dart';
import 'on_board_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'on_board_view_body.dart';
part 'on_board_view_bottom.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = MediaQuery.of(context).size;

    return ViewModelBuilder<OnBoardViewModel>.reactive(
      builder: (BuildContext context, OnBoardViewModel viewModel, Widget _) {
        return Material(
          color: OnBoardColors.bgColor,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: s.height / 7.5,
                ),
                MainText(
                  text: AppLocalizations.of(context).virtual,
                  color: OnBoardColors.virtualColor,
                ),
                MainText(
                  text: AppLocalizations.of(context).ecosystem,
                ),
                SizedBox(
                  height: s.height / 30,
                ),
                MainText(
                  text: AppLocalizations.of(context).onboard_info_text,
                  size: 12,
                  fontWeight: FontWeight.w400,
                ),
                OnBoardBody(s: s),
                SizedBox(
                  height: s.height / 40,
                ),
                const OnBoardBottom(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => OnBoardViewModel(),
    );
  }
}



