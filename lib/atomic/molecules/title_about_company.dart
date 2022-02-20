import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/about_company_icon.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class TitleAboutCompany extends StatelessWidget {
  final String title;
  const TitleAboutCompany({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AboutCompanyIcon(),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            title,
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
