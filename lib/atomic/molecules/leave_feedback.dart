import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_elevated_button.dart';
import 'package:discounter/atomic/molecules/custom_avatar.dart';
import 'package:discounter/atomic/molecules/custom_combine_stars.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/generated/l10n.dart';

class LeaveFeedback extends StatefulWidget {
  final int activeIndication;
  const LeaveFeedback({Key? key, required this.activeIndication})
      : super(key: key);

  @override
  _LeaveFeedbackState createState() => _LeaveFeedbackState();
}

class _LeaveFeedbackState extends State<LeaveFeedback> {
  UserModel? model;
  String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: CustomColors.grayHaze,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: CustomAvatar(
                radiusSize: 58,
                borderColor: CustomColors.blackOpacity24,
                iconColor: CustomColors.blackOpacity22,
                imageUrl: imageUrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                S.of(context).titleLeaveFeedback,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing',
                style: TextStyle(
                  fontSize: 14,
                  color: CustomColors.blackOpacity54,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 88),
              child: CustomCombineStars(
                isEditable: true,
                activeIndication: 0,
                sizeCustomStar: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Container(
                alignment: Alignment.center,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: S.of(context).hintTextLeaveFeedback,
                    hintStyle: TextStyle(
                        color: CustomColors.blackOpacity38, fontSize: 16),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: CustomColors.blackOpacity12),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: CustomColors.blackOpacity12),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: double.maxFinite, minHeight: 48),
                child: CustomElevatedButton(
                  onPressed: () {},
                  buttonText: S.of(context).buttonTextLeaveFeedback,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
