import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_list_tile.dart';
import 'package:discounter/atomic/molecules/custom_avatar.dart';
import 'package:discounter/generated/l10n.dart';
import 'package:discounter/screens/profile_screen.dart';

import 'drawer_cubit/custom_drawer_cubit.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String? imageUrl;
  String? name;
  String? surname;
  bool isTitleIsEnable = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomDrawerCubit, CustomDrawerState>(
      listener: (context, state) {
        if (state is CustomDrawerLoaded && state.users != null) {
          imageUrl = state.users!.avatarUrl;
          name = state.users!.name;
          surname = state.users!.surname;
          isTitleIsEnable = true;
        } else {
          imageUrl = '';
          name = S.of(context).userName;
          surname = S.of(context).userSurName;
          isTitleIsEnable = false;
        }
      },
      builder: (context, state) {
        return Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: CustomColors.grayHaze,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: CustomAvatar(
                        radiusSize: 56,
                        borderColor: CustomColors.blackOpacity24,
                        iconColor: CustomColors.blackOpacity22,
                        imageUrl: imageUrl,
                      ),
                    ),
                    Text(
                      '$name  $surname',
                      style: TextStyle(
                        fontSize: 18,
                        color: CustomColors.blackOpacity54,
                      ),
                    ),
                  ],
                ),
              ),
              CustomListTile(
                text: S.of(context).addUser,
                icon: Icons.add,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ProfileScreen.routName,
                  );
                },
              ),
              CustomListTile(
                enabled: isTitleIsEnable,
                text: S.of(context).editUser,
                icon: Icons.create,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ProfileScreen.routName,
                    arguments:
                        (state is CustomDrawerLoaded && state.users != null)
                            ? state.users
                            : null,
                  );
                },
              ),
              CustomListTile(
                enabled: isTitleIsEnable,
                text: S.of(context).deleteUser,
                icon: Icons.delete_forever,
                onTap: () {
                  context.read<CustomDrawerCubit>().removeUserModel();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
