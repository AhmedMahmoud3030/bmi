// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
  final double barWidth;

  const LeftBar({Key key, this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color:accentHexColor,
          ),
          height: 25,
          width: barWidth,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}
