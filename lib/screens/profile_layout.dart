import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:discounter/atomic/atoms/colors.dart';
import 'package:discounter/atomic/atoms/custom_elevated_button.dart';
import 'package:discounter/atomic/atoms/gender_check_box.dart';
import 'package:discounter/atomic/atoms/input_field_block.dart';
import 'package:discounter/atomic/molecules/date_picker_widget.dart';
import 'package:discounter/atomic/molecules/gender_selector.dart';
import 'package:discounter/atomic/molecules/image_picker_widget.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/generated/l10n.dart';
import 'package:discounter/screens/home_page.dart';
import 'package:discounter/screens/profile_cubit/profile_cubit.dart';

class ProfileLayout extends StatefulWidget {
  const ProfileLayout({
    Key? key,
  }) : super(key: key);

  @override
  _ProfileLayoutState createState() => _ProfileLayoutState();
}

class _ProfileLayoutState extends State<ProfileLayout> {
  final dateFormatter = DateFormat('yyyy-MM-dd');
  final formKey = GlobalKey<FormState>();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();

  Genders? gender;
  bool shouldShowMessage = false;
  Genders? genderValue;
  String? imageUrl;
  bool _isPicked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: CustomColors.grayHaze,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          titleTextStyle: const TextStyle(fontFamily: 'actor'),
          backgroundColor: Colors.green,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
          title: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              S.of(context).titleProfile,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileInitial && state.users != null) {
              nameController.text = state.users!.name;
              surnameController.text = state.users!.surname;
              dateController.text =
                  dateFormatter.format(state.users!.birthdate);
              gender = state.users!.gender;
              imageUrl = state.users!.avatarUrl;
            }
            return Form(
              key: formKey,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 64),
                child: Column(
                  children: [
                    ImagePickerWidget(
                      imageUrl: imageUrl,
                      onImageSelected: (value) {
                        imageUrl = value;
                        _isPicked = true;
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputFieldBlock(
                          autofocus: false,
                          controller: nameController,
                          lableText: S.of(context).lableTextName,
                          hintText: S.of(context).hintTextName,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return S.of(context).pleaseEnterYourName;
                            }
                            if (value.length > 32) {
                              return S
                                  .of(context)
                                  .YouHaveExceededTheCharacterLimit;
                            }
                            return null;
                          },
                        ),
                        InputFieldBlock(
                          controller: surnameController,
                          lableText: S.of(context).lableTextSurname,
                          hintText: S.of(context).hintTextSurname,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return S.of(context).pleaseEnterYourSurname;
                            }
                            if (value.length > 32) {
                              return S
                                  .of(context)
                                  .YouHaveExceededTheCharacterLimit;
                            }
                            return null;
                          },
                        ),
                        DatePickerWidget(
                          dateController: dateController,
                        ),
                        GenderSelector(
                          validator: (value) {
                            if (value == null) {
                              return 'Пожалуйста, укажите свой пол!';
                            }
                          },
                          groupValue: gender,
                          showMessage: shouldShowMessage,
                          onTap: (value) {
                            gender = value;
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints:
                const BoxConstraints(minWidth: double.maxFinite, minHeight: 48),
            child: CustomElevatedButton(
              onPressed: saveUserModel,
              buttonText: S.of(context).saveChanges,
            ),
          ),
        ),
      ),
    );
  }

  void saveUserModel() async {
    if (formKey.currentState!.validate()) {
      String? downloadedUrl;
      if (imageUrl != null && _isPicked == true) {
        downloadedUrl =
            await BlocProvider.of<ProfileCubit>(context).getImageUrl(imageUrl!);
      } else {
        downloadedUrl = imageUrl;
      }

      final newUser = UserModel(
        name: nameController.text,
        surname: surnameController.text,
        birthdate: DateTime.parse(dateController.text),
        gender: gender!,
        avatarUrl: downloadedUrl,
      );
      BlocProvider.of<ProfileCubit>(context).saveUserModels(newUser);
      Navigator.popUntil(context, ModalRoute.withName(HomePage.routName));
    }
  }

  @override
  void dispose() {
    super.dispose();
    dateController.dispose();
    nameController.dispose();
    surnameController.dispose();
  }
}
