import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/custom_star.dart';

class CustomCombineStars extends StatefulWidget {
  final int activeIndication;
  final double sizeCustomStar;
  final bool isEditable;

  const CustomCombineStars({
    Key? key,
    this.sizeCustomStar = 14,
    required this.activeIndication,
    this.isEditable = false,
  }) : super(key: key);

  @override
  State<CustomCombineStars> createState() => _CustomCombineStarsState();
}

class _CustomCombineStarsState extends State<CustomCombineStars> {
  int activeIndication = 0;
  double sizeCustomStar = 0;
  @override
  initState() {
    sizeCustomStar = widget.sizeCustomStar;
    activeIndication = widget.activeIndication;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<CustomStar>.generate(
        5,
        (index) => CustomStar(
          isActive: (index++) < activeIndication,
          customStarSize: sizeCustomStar,
          onTap: widget.isEditable
              ? () {
                  setState(
                    () {
                      activeIndication = index++;
                    },
                  );
                }
              : null,
        ),
      ),
    );
  }
}
