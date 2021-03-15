import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/controller/feed_controller.dart';
import 'package:redeinfo/ui/feed/widgets/feed_card.dart';
import 'package:redeinfo/ui/widgets/drawer/custom_drawer.dart';

class FeedScreen extends GetView<FeedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      drawer: CustomDrawer(),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait)
            return _OneColumnVerticalLayout();
          if (orientation == Orientation.landscape)
            return _OneRowHorizontalLayout();
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.post_add),
        onPressed: () {},
      ),
    );
  }
}

class _OneColumnVerticalLayout extends StatelessWidget {
  final FeedController controller = Get.find<FeedController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Obx(
        () => ListView(
          children: [
            // SizedBox(height: 12),
            ...(controller.feedModel.value?.posts
                    .map((element) => Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: AspectRatio(
                              aspectRatio: 1,
                              child: FeedCard.fromPostModel(post: element)),
                        ))
                    .toList() ??
                [])
          ],
        ),
      ),
    );
  }
}

class _OneRowHorizontalLayout extends StatelessWidget {
  final FeedController controller = Get.find<FeedController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Expanded(
          child: Obx(
            () => ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 12,
                ),
                ...(controller.feedModel.value?.posts
                        .map(
                          (element) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Container(
                              width: Get.height,
                              child: FeedCard.fromPostModel(
                                post: element,
                              ),
                            ),
                          ),
                        )
                        .toList() ??
                    [])
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
