import 'package:flutter/material.dart';

class OnBoardPhoto extends StatelessWidget {
  const OnBoardPhoto({
    Key key,
    @required this.s, this.image,

  }) : super(key: key);

  final Size s;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
          width: s.width / 2.5,
          height: s.height / 3,
          child: Image.network(
            image,
            fit: BoxFit.cover,
          )),
    );
  }
}