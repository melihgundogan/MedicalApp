import 'package:flutter/material.dart';
import 'package:fsc_ibb/utils/colors.dart';
import 'package:fsc_ibb/widgets/custom_widgets/main_text.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key key,
    this.title, this.onpressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MainText(
            text: title,
            size: 20,
            color: HomeColors().nameColor,
          ),
          IconButton(
              onPressed: onpressed,
              icon: const Icon(
                Icons.arrow_forward,
                color: Color.fromRGBO(25, 99, 176, 1),
              )),
        ],
      ),
    );
  }
}
