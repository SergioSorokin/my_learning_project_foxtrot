import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class AboutCompanyIcon extends StatelessWidget {
  const AboutCompanyIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.info_outline,
      size: 24,
      color: CustomColors.blackOpacity44,
    );
  }
}
