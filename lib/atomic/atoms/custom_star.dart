import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class CustomStar extends StatelessWidget {
  final bool isActive;
  final double customStarSize;
  final void Function()? onTap;

  const CustomStar({
    Key? key,
    this.isActive = false,
    required this.customStarSize,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        Icons.star_rounded,
        size: customStarSize,
        color: isActive
            ? CustomColors.customOrangeLight
            : CustomColors.blackOpacity12,
      ),
    );
  }
}
