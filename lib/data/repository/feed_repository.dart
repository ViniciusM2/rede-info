import 'package:redeinfo/data/model/feed_model.dart';
import 'package:redeinfo/data/model/user_model.dart';
import 'package:redeinfo/data/provider/feed_provider.dart';
import 'package:redeinfo/data/provider/user_provider.dart';

class FeedRepository {
  final FeedProvider feedProvider;

  FeedRepository({required this.feedProvider});

  Future<FeedModel> getFeed() async {
    return await feedProvider.getFeed();
  }
}
