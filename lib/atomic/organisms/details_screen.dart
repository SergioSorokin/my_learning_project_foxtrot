import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:discounter/atomic/atoms/custom_divider.dart';
import 'package:discounter/atomic/molecules/about_company.dart';
import 'package:discounter/atomic/molecules/leave_feedback.dart';
import 'package:discounter/atomic/molecules/reviews.dart';
import 'package:discounter/atomic/molecules/schedule_company.dart';
import 'package:discounter/atomic/molecules/top_label.dart';
import 'package:discounter/generated/l10n.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TopLabel(
            title: S.of(context).titleDetailsScreen,
            subTitle: 'Lorem ipsum',
            likeSum: '381,830',
          ),
          const CustomDivider(),
          AboutCompany(
            title: S.of(context).titleAboutCompany,
            aboutBodyText: 'Lorem ipsum dolor sit amet, '
                'consectetur adipiscing elit, '
                'sed do eiusmod tempor incididunt ut'
                ' labore et dolore magna aliqua. '
                'Ut enim ad minim veniam, quis nostrud exercitation'
                ' ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                'Duis aute iru...',
          ),
          const CustomDivider(),
          ScheduleCompany(
            title: S.of(context).titleScheduleCompany,
          ),
          const CustomDivider(),
          Reviews(
              title: S.of(context).titleReviews,
              buttonText: S.current.buttonTextReviews
              // S.of(context).buttonTextReviews,
              ),
          const LeaveFeedback(
            activeIndication: 4,
          ),
        ],
      ),
    );
  }
}
