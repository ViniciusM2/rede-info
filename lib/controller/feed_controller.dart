import 'package:get/get.dart';
import 'package:redeinfo/data/model/feed_model.dart';
import 'package:redeinfo/data/repository/feed_repository.dart';

class FeedController extends GetxController {
  final FeedRepository repository;
  FeedController({required this.repository});
  @override
  void onInit() async {
    feedModel.value = await getFeed();
    super.onInit();
  }

  Future<FeedModel> getFeed() async {
    return await repository.getFeed();
  }

  final listOfPosts = [].obs;
  var feedModel = FeedModel.empty().obs;
  
}
