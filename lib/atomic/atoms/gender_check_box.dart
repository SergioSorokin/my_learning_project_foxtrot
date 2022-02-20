import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Genders { man, woman }

class GenderCheckBox extends StatelessWidget {
  final String title;
  final Genders value;
  final Genders? groupValue;
  final void Function(Genders?) onTap;
  const GenderCheckBox(
      {Key? key,
      required this.value,
      this.groupValue,
      required this.onTap,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<Genders>(
          splashRadius: 0,
          value: value,
          groupValue: groupValue,
          onChanged: onTap,
        ),
        GestureDetector(
          onTap: () => onTap(value),
          child: Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
