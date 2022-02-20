import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class TitleScheduleCompanyIcon extends StatelessWidget {
  const TitleScheduleCompanyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.access_time,
      size: 24,
      color: CustomColors.blackOpacity44,
    );
  }
}
