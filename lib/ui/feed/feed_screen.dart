import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/controller/feed_controller.dart';
import 'package:redeinfo/ui/feed/widgets/feed_card.dart';
import 'package:redeinfo/ui/widgets/drawer/custom_drawer.dart';

class FeedScreen extends GetView<FeedController> {
  @override
  Widget build(BuildContext context) {
    if (isPermanentDrawerSituation)
      return Row(
        children: [
          Container(
            width: 300,
            child: CustomDrawer(),
          ),
          // Flexible(
          //   child: CustomDrawer(),
          // ),
          Expanded(
            flex: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Feed'),
                automaticallyImplyLeading: false,
              ),
              body: _ColumnsLayout(
                crossAxisCount: context.width < 2000 ? 2 : 3,
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.post_add),
                onPressed: () {},
              ),
            ),
          )
        ],
      );
    else
      return Scaffold(
        appBar: AppBar(
          title: Text('Feed'),
        ),
        drawer: CustomDrawer(),
        body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            if (orientation == Orientation.portrait && context.width > 700)
              return _ColumnsLayout(
                crossAxisCount: 2,
              );
            if (orientation == Orientation.portrait)
              return _ColumnsLayout(
                crossAxisCount: 1,
              );
            if (orientation == Orientation.landscape && GetPlatform.isMobile)
              return _OneRowHorizontalLayout();
            if (orientation == Orientation.landscape &&
                GetPlatform.isWeb) if (context.width > 700)
              return _ColumnsLayout(
                crossAxisCount: 2,
              );
            else
              return _ColumnsLayout(
                crossAxisCount: 1,
              );
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

bool get isPermanentDrawerSituation {
  var context = Get.context;
  return context?.orientation == Orientation.landscape &&
      GetPlatform.isWeb &&
      !(GetPlatform.isMobile) &&
      context!.height > 500 &&
      context.width > 1050;
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

class _ColumnsLayout extends StatelessWidget {
  final int crossAxisCount;
  _ColumnsLayout({required this.crossAxisCount});
  final FeedController controller = Get.find<FeedController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Obx(
            () => Padding(
              padding: const EdgeInsets.all(12.0),
              child: GridView.count(
                crossAxisCount: crossAxisCount,
                children: [
                  // SizedBox(height: 12),
                  ...(controller.feedModel.value?.posts
                          .map((element) => Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: AspectRatio(
                                    aspectRatio: 1,
                                    child:
                                        FeedCard.fromPostModel(post: element)),
                              ))
                          .toList() ??
                      [])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
