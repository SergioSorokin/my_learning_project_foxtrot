import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_text_button.dart';
import 'package:discounter/atomic/molecules/title_about_company.dart';
import 'package:discounter/generated/l10n.dart';

class AboutCompany extends StatefulWidget {
  final String title;
  final String aboutBodyText;

  const AboutCompany({
    Key? key,
    required this.title,
    required this.aboutBodyText,
  }) : super(key: key);

  @override
  _AboutCompanyState createState() => _AboutCompanyState();
}

class _AboutCompanyState extends State<AboutCompany> {
  bool _isMore = false;
  TextOverflow? _overflow = TextOverflow.ellipsis;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TitleAboutCompany(
            title: widget.title,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 58, top: 12, bottom: 16),
              child: Text(
                widget.aboutBodyText,
                overflow: _overflow,
                style:
                    TextStyle(fontSize: 14, color: CustomColors.blackOpacity54),
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: CustomTextButton(
              buttonText:
                  _isMore ? S.of(context).overthrow : S.of(context).moreDetails,
              onPressed: textOverflow,
            ),
          ),
        ],
      ),
    );
  }

  void textOverflow() {
    _isMore = !_isMore;
    setState(
      () => _isMore
          ? _overflow = TextOverflow.fade
          : _overflow = TextOverflow.ellipsis,
    );
  }
}
