// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class RightBar extends StatelessWidget {
    final  double barWidth;

  const RightBar({Key key, this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color:accentHexColor,
          ),
          height: 25,
          width: barWidth,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}