import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/generated/l10n.dart';

class DiscountCard extends StatelessWidget {
  final String imageUrl;
  final bool isVertical;

  const DiscountCard({this.imageUrl = '', this.isVertical = true, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: isVertical ? 284 : 232,
        alignment: Alignment.bottomLeft,
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
              fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                gradient: LinearGradient(
                  begin: Alignment(0, -0.24),
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Color.fromRGBO(0, 0, 0, 0.8),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: S.of(context).nameOfTheAction,
                            // 'Название акции ',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'lorem',
                            style: GoogleFonts.tradeWinds(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    S.of(context).until,
                    style: TextStyle(
                      color: CustomColors.lightGray,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
