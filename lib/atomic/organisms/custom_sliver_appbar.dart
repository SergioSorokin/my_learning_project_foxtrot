import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_indicator_tapbar.dart';
import 'package:discounter/atomic/atoms/custom_show_dialog.dart';
import 'package:discounter/atomic/organisms/details_screen.dart';
import 'package:discounter/atomic/organisms/discount_screen.dart';
import 'package:discounter/generated/l10n.dart';
import 'package:discounter/screens/home_screen_cubit/home_screen_cubit.dart';

class CustomSliverAppBar extends CustomScrollView {
  const CustomSliverAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: BlocListener<HomeScreenCubit, HomeScreenState>(
        listener: (context, state) {
          if (state is HomeScreenLoaded && state.isAppRequireUpdate == true) {
            showDialog(
              context: context,
              builder: (_) => CustomShowDialog(
                title: '',
                content: S.of(context).update,
                buttonText: S.of(context).ok,
              ),
            );
          }
        },
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 274,
                floating: false,
                pinned: true,
                actions: [Image.asset('assets/qr.png')],
                backgroundColor: CustomColors.customOrangeRed,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset('assets/fox.png'),
                ),
                bottom: TabBar(
                  indicatorWeight: 0.2,
                  indicator: const CustomIndicatorTapBar(
                    indicatorSize: CustomIndicatorTapBarSize.full,
                    indicatorHeight: 2,
                    indicatorColor: Colors.white,
                  ),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 8),
                  labelStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 14,
                    color: Colors.white54,
                  ),
                  tabs: [
                    Tab(text: S.of(context).offers),
                    Tab(text: S.of(context).details),
                    Tab(text: S.of(context).locations),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              DiscountScreen(),
              DetailsScreen(),
              FittedBox(
                fit: BoxFit.cover,
                child: Image(
                  image: AssetImage('assets/map.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
