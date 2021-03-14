import 'package:get/get.dart';

class UserModel {
  String name;
  bool isGraduateStudent;
  String profilePhoto;
  late bool isModelValid;

  UserModel(
      {required this.name,
      required this.isGraduateStudent,
      required this.profilePhoto});

  static const List<String> expectedKeys = [
    'name',
    'graduateStudent',
    'profilePhoto'
  ];

  UserModel.nobody()
      : name = '',
        isGraduateStudent = false,
        profilePhoto =
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRe18lXrsMN7qs_k3onJhOWfH1KUV5NdZMThA&usqp=CAU';

  UserModel.fromMap(Map<String, dynamic>? map)
      : name = map?['name'] ?? '',
        isGraduateStudent = map?['graduateStudent'] ?? false,
        profilePhoto = map?['profilePhoto'] ?? '',
        isModelValid = false {
    if (this.name.isNotEmpty &&
        this.profilePhoto.isNotEmpty &&
        this.profilePhoto.isURL) {
      isModelValid = true;
    } else {
      throw Exception('UserModel: Dados inválidos');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['graduateStudent'] = this.isGraduateStudent;
    data['profilePhoto'] = this.profilePhoto;
    return data;
  }
}
