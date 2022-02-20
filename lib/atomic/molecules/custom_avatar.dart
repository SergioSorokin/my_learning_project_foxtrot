import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double radiusSize;
  final Color? borderColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final String? imageUrl;
  final bool isPicked;
  const CustomAvatar({
    Key? key,
    required this.radiusSize,
    this.borderColor = Colors.transparent,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.transparent,
    this.isPicked = false,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: borderColor!,
          ),
          borderRadius: BorderRadius.circular(radiusSize),
          color: backgroundColor),
      child: (imageUrl != null && imageUrl!.isNotEmpty)
          ? ClipOval(
              child: Image(
                image: isPicked
                    ? AssetImage(imageUrl!)
                    : NetworkImage(imageUrl!) as ImageProvider<Object>,
                fit: BoxFit.cover,
                width: radiusSize,
                height: radiusSize,
              ),
            )
          : Icon(
              Icons.account_circle,
              size: radiusSize,
              color: iconColor,
            ),
    );
  }
}
