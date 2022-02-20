import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';

class CustomListTile extends StatelessWidget {
  final IconData? icon;
  final String text;
  final bool enabled;
  final void Function()? onTap;
  const CustomListTile({
    Key? key,
    this.onTap,
    this.enabled = true,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: enabled,
      leading: Icon(
        icon,
        color:
            enabled ? CustomColors.blackOpacity54 : CustomColors.blackOpacity24,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: enabled
              ? CustomColors.blackOpacity54
              : CustomColors.blackOpacity24,
        ),
      ),
      onTap: onTap,
    );
  }
}
