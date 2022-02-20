import 'package:flutter/material.dart';
import 'package:discounter/atomic/molecules/title_schedule_company.dart';
import 'package:discounter/atomic/molecules/week_of_days_and_opening_hours.dart';

class ScheduleCompany extends StatelessWidget {
  final String title;
  const ScheduleCompany({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TitleScheduleCompany(
            title: title,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 58, top: 16),
            child: WeekOfDaysAndOpeningHours(),
          ),
        ],
      ),
    );
  }
}
