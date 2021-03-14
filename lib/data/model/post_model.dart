import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:redeinfo/data/model/user_model.dart';

class PostModel {
  String title;
  DateTime dateTime;
  DocumentReference? _authorReference;
  String authorName;
  int numberOfLikes;
  int numberOfComments;

  PostModel({
    required this.title,
    required this.dateTime,
    required this.authorName,
    required this.numberOfLikes,
    required this.numberOfComments,
  });

  Future<UserModel> get expAuthor async {
    try {
      return await _authorReference
              ?.get()
              .then((value) => UserModel.fromMap(value.data())) ??
          UserModel.nobody();
    } catch (e) {
      print('post_model: $e');
      return UserModel.nobody();
    }
  }

  PostModel.fromMap(Map<String, dynamic>? map)
      : title = map?['title'] ?? '',
        dateTime = DateTime.fromMillisecondsSinceEpoch(
          (map?['dateTime'] as Timestamp).millisecondsSinceEpoch,
        ),
        _authorReference = map?['authorReference'],
        authorName = map?['authorName'],
        numberOfLikes = map?['numberOfLikes'],
        numberOfComments = map?['numberOfComments'];

  // UserModel.fromMap(Map<String, dynamic>? map)
  //     : name = map?['name'] ?? '',
  //       isGraduateStudent = map?['graduateStudent'] ?? false,
  //       profilePhoto = map?['profilePhoto'] ?? '',
  //       isModelValid = false {
  //   if (this.name.isNotEmpty &&
  //       this.profilePhoto.isNotEmpty &&
  //       this.profilePhoto.isURL) {
  //     isModelValid = true;
  //   } else {
  //     throw Exception('UserModel: Dados inválidos');
  //   }
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   data['graduateStudent'] = this.isGraduateStudent;
  //   data['profilePhoto'] = this.profilePhoto;
  //   return data;
  // }
}
