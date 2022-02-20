import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/input_field_block.dart';
import 'package:discounter/generated/l10n.dart';

class DatePickerWidget extends StatefulWidget {
  final TextEditingController dateController;

  const DatePickerWidget({Key? key, required this.dateController})
      : super(key: key);

  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? date;
  final dateFormatter = DateFormat('yyyy-MM-dd');

  @override
  Widget build(BuildContext context) {
    return InputFieldBlock(
      onTap: () => pickDate(context),
      readOnly: true,
      controller: widget.dateController,
      lableText: S.of(context).dateOfBirth,
      hintText: S.of(context).enterYourDateOfBirth,
      suffixIcon: Icon(
        Icons.today,
        color: CustomColors.blackOpacity38,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).pleaseEnterYourDateOfBirth;
        }
        return null;
      },
    );
  }

  Future<void> pickDate(BuildContext context) async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 75),
      lastDate: DateTime.now(),
    );
    if (newDate != null) {
      setState(() {
        date = newDate;
      });
      widget.dateController.text = dateFormatter.format(date!);
    }
  }
}
