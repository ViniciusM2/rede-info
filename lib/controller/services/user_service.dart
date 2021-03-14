import 'package:get/get.dart';
import 'package:redeinfo/data/model/user_model.dart';
import 'package:redeinfo/data/repository/user_repository.dart';

class UserService extends GetxService {
  final UserRepository repository;
  UserService({required this.repository});

  final _userName = ''.obs;
  String get userName => this._userName.value ?? '';
  set userName(value) => this._userName.value = value;

  final _profilePhotoUrl = ''.obs;
  String get profilePhotoUrl => this._profilePhotoUrl.value ?? '';
  set profilePhotoUrl(value) => this._profilePhotoUrl.value = value;

  @override
  void onInit() async {
    try {
      final user = await getUser();
      userName = user.name;
      profilePhotoUrl = user.profilePhoto;
    } catch (e) {
      Get.snackbar('Erro!', '$e');
    }
    super.onInit();
  }

  Future<UserModel> getUser() async {
    return await repository.getUser();
  }
}
