import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/molecules/custom_combine_stars.dart';

import 'custom_avatar.dart';

class UserReview extends StatelessWidget {
  final String name;
  final String bodyText;
  final int activeIndication;
  const UserReview(
      {Key? key,
      required this.name,
      required this.activeIndication,
      required this.bodyText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomAvatar(
              radiusSize: 40,
              backgroundColor: CustomColors.blackOpacity22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, bottom: 4),
                    child: Text(name),
                  ),
                  CustomCombineStars(
                    activeIndication: activeIndication,
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 58, bottom: 28, top: 18),
          child: Text(
            bodyText,
            style: TextStyle(
              fontSize: 14,
              color: CustomColors.blackOpacity54,
            ),
          ),
        ),
      ],
    );
  }
}
