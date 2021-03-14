import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:redeinfo/data/model/user_model.dart';

class UserProvider {
  final CollectionReference courses =
      FirebaseFirestore.instance.collection('users');
  Future<UserModel> getUser() async {
    var query = await courses.doc('vinimenezez').get();
    return UserModel.fromMap(query.data());
  }
}
