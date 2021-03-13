import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:redeinfo/common/drawer/custom_drawer.dart';
import 'package:redeinfo/ui/dashboard/widgets/treasury_card.dart';

import 'widgets/next_class_card.dart';
import 'widgets/next_test_card.dart';
import 'widgets/presence_card.dart';
import 'widgets/school_lunch_card.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: [
            StaggeredTile.count(2, 2.2),
            StaggeredTile.count(2, 1.1),
            StaggeredTile.count(2, 1.1),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
          ],
          children: [
            TreasuryCard(),
            PresenceCard(),
            NextTestCard(),
            NextClassCard(),
            SchoolLunchCard(),
          ],
        ),
      ),
    );
  }
}
