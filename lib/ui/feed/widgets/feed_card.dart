import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/controller/services/user_service.dart';
import 'package:redeinfo/data/model/post_model.dart';

class FeedCard extends StatelessWidget {
  final PostModel post;
  FeedCard.fromPostModel({required this.post});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            ListTile(
              trailing: CircleAvatar(
                backgroundImage: GetPlatform.isWeb
                    ? null
                    : NetworkImage(
                        Get.find<UserService>().profilePhotoUrl,
                      ),
              ),
              title: Text(
                  '${post.authorName} - há ${_getTimeAgoOfAPost(post: post)}',
                  style: Get.textTheme!.overline),
              subtitle: Text('${post.title}', style: Get.textTheme!.headline6),
            ),
            Expanded(
                child: Container(
              color: Colors.white12,
            )),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
                Text('${post.numberOfLikes}'),
                IconButton(icon: Icon(Icons.comment), onPressed: () {}),
                Text('${post.numberOfComments}'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _getTimeAgoOfAPost({required PostModel post}) {
    var interval = Duration(
        milliseconds: DateTime.now().millisecondsSinceEpoch -
            post.dateTime.millisecondsSinceEpoch);
    if (interval.inDays >= 1) return '${interval.inDays} d';
    if (interval.inHours > 1) return '${interval.inHours} h';
    if (interval.inMinutes > 1) return '${interval.inMinutes} min';
    if (interval.inSeconds > 15) return '${interval.inMinutes} s';
    return ('Agora');
  }
}
