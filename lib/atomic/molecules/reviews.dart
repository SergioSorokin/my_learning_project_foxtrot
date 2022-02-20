import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_text_button.dart';
import 'package:discounter/atomic/molecules/user_review.dart';

class Reviews extends StatelessWidget {
  final String title;
  final String buttonText;
  const Reviews({Key? key, required this.buttonText, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: CustomColors.blackOpacity54,
              ),
            ),
          ),
          const UserReview(
            activeIndication: 4,
            name: 'Алексеев Петр',
            bodyText: 'Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt '
                'ut labore et dolore magna aliqua.',
          ),
          const UserReview(
            activeIndication: 3,
            name: 'Евгение Александр',
            bodyText: 'Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt '
                'ut labore et dolore magna aliqua.',
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: CustomTextButton(
                buttonText: buttonText,
                onPressed: null,
              )),
        ],
      ),
    );
  }
}
