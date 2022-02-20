import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:discounter/atomic/molecules/combine_vertical_card.dart';
import 'package:discounter/atomic/molecules/discount_card.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            CombineVerticalCard(),
            DiscountCard(
              imageUrl: 'assets/postThird.png',
              isVertical: false,
            ),
            CombineVerticalCard(),
          ],
        ),
      ),
    );
  }
}
