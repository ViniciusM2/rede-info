import 'package:redeinfo/data/model/user_model.dart';
import 'package:redeinfo/data/provider/user_provider.dart';

class UserRepository {
  final UserProvider userProvider;

  UserRepository({required this.userProvider});

  Future<UserModel> getUser() async {
    return await userProvider.getUser();
  }
}
