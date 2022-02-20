import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/title_schedule_company_icon.dart';

class TitleScheduleCompany extends StatelessWidget {
  final String title;
  const TitleScheduleCompany({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TitleScheduleCompanyIcon(),
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
