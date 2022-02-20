import 'package:discounter/atomic/atoms/gender_check_box.dart';

class UserModel {
  final String name;
  final String surname;
  final DateTime birthdate;
  final Genders gender;
  final String? avatarUrl;

  UserModel(
      {required this.name,
      required this.surname,
      required this.birthdate,
      required this.gender,
      this.avatarUrl});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    Genders genders;
    if (json['gender'] == 'Genders.man') {
      genders = Genders.man;
    } else {
      genders = Genders.woman;
    }

    return UserModel(
      name: json['name'],
      surname: json['surname'],
      birthdate: DateTime.parse(json['birthdate']),
      gender: genders,
      avatarUrl: json['avatarUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'surname': surname,
        'avatarUrl': avatarUrl,
        'birthdate': birthdate.toString(),
        'gender': gender.toString(),
      };
}
