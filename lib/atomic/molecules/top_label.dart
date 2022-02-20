import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/molecules/custom_combine_stars.dart';

class TopLabel extends StatelessWidget {
  final String title;
  final String subTitle;
  final String likeSum;

  const TopLabel(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.likeSum})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              const CustomCombineStars(
                activeIndication: 4,
                sizeCustomStar: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subTitle,
                style: TextStyle(
                  color: CustomColors.blackOpacity54,
                  fontSize: 14,
                ),
              ),
              Text(
                likeSum,
                style: TextStyle(
                  fontSize: 12,
                  color: CustomColors.blackOpacity38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
