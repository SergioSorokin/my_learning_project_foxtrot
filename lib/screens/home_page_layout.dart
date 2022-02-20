import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discounter/atomic/organisms/custom_sliver_appbar.dart';
import 'package:discounter/data/repository/app_config_repository.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';
import 'package:discounter/screens/custom_drawer.dart';
import 'package:discounter/screens/drawer_cubit/custom_drawer_cubit.dart';
import 'package:discounter/screens/home_screen_cubit/home_screen_cubit.dart';

class HomePageLayout extends StatefulWidget {
  final UserModelRepository repository;
  final AppConfigRepository configRepository;
  final FirebaseStorageRepository firebaseStorageRepository;
  const HomePageLayout({
    Key? key,
    required this.repository,
    required this.configRepository,
    required this.firebaseStorageRepository,
  }) : super(key: key);

  @override
  _HomePageLayoutState createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        drawer: BlocProvider<CustomDrawerCubit>(
          create: (context) {
            return CustomDrawerCubit(
                widget.repository, widget.firebaseStorageRepository);
          },
          child: const CustomDrawer(),
          lazy: false,
        ),
        body: BlocProvider<HomeScreenCubit>(
          create: (context) {
            return HomeScreenCubit(widget.configRepository);
          },
          child: const CustomSliverAppBar(),
        ),
      ),
    );
  }
}
