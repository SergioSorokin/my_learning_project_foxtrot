import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  const CustomTextButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          color: CustomColors.customGreen,
        ),
      ),
    );
  }
}
