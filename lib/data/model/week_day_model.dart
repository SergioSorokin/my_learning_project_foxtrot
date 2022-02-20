class WeekDayModel {
  final String dayName;
  final String startTime;
  final String endTime;

  WeekDayModel(
      {required this.dayName,
      this.startTime = '12:00',
      this.endTime = '00:00'});
}
