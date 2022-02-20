import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 4,
      color: CustomColors.blackOpacity24,
    );
  }
}
