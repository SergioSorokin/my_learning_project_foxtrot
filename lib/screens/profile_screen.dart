import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';
import 'package:discounter/screens/profile_cubit/profile_cubit.dart';
import 'package:discounter/screens/profile_layout.dart';

class ProfileScreen {
  static const String routName = '/profileScreen';

  static Widget initRoute(BuildContext context,
      {required UserModelRepository repository,
      required FirebaseStorageRepository firebaseStorageRepository}) {
    var userModel = ModalRoute.of(context)?.settings.arguments as UserModel?;
    return BlocProvider<ProfileCubit>(
      create: (context) {
        return ProfileCubit(repository, userModel, firebaseStorageRepository);
      },
      child: const ProfileLayout(),
    );
  }
}
