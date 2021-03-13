import 'package:flutter/material.dart';
import 'package:redeinfo/ui/widgets/drawer/custom_drawer.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      drawer: CustomDrawer(),
      body: Container(),
    );
  }
}
