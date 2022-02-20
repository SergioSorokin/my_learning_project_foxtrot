import 'package:flutter/material.dart';
import 'package:discounter/data/model/week_day_model.dart';
import 'package:discounter/generated/l10n.dart';

class WeekOfDaysAndOpeningHours extends StatelessWidget {
  WeekOfDaysAndOpeningHours({Key? key}) : super(key: key);

  static final dayNames = <String>[
    S.current.monday,
    S.current.tuesday,
    S.current.wednesday,
    S.current.thursday,
    S.current.friday,
    S.current.saturday,
    S.current.sunday,
  ];

  final daysOfWeek = <WeekDayModel>[
    for (var dayName in dayNames) WeekDayModel(dayName: dayName)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var dayModel in daysOfWeek)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dayModel.dayName,
                  style: TextStyle(
                    fontSize: 14,
                    color:
                        dayNames[DateTime.now().weekday - 1] == dayModel.dayName
                            ? Colors.black
                            : Colors.grey,
                  ),
                ),
                Text(
                  '${dayModel.startTime}-${dayModel.endTime}',
                  style: TextStyle(
                    fontSize: 14,
                    color:
                        dayNames[DateTime.now().weekday - 1] == dayModel.dayName
                            ? Colors.black
                            : Colors.grey,
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
