import 'package:flutter/material.dart';
import 'package:discounter/atomic/molecules/discount_card.dart';

class CombineVerticalCard extends StatelessWidget {
  const CombineVerticalCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        DiscountCard(
          imageUrl: 'assets/postFirst.png',
        ),
        SizedBox(
          width: 8,
        ),
        DiscountCard(
          imageUrl: 'assets/postSecond.png',
        ),
      ],
    );
  }
}
