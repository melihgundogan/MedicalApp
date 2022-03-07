import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  const VerticalGap({
    Key key,
    @required this.s, this.size = 50,
  }) : super(key: key);

  final Size s;
  final int size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: s.width/ size,
    );
  }
}