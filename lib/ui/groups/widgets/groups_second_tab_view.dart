import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:redeinfo/ui/groups/widgets/groups_card.dart';

class GroupsSecondTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGridView.count(
        crossAxisCount: 2,
        staggeredTiles: [
          StaggeredTile.fit(2),
          StaggeredTile.fit(2),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(2),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
        ],
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("+ EXPLORAR CLUBES"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Tecnologias',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          GroupsCard(),
          GroupsCard(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Arte e Cultura',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          GroupsCard(),
          GroupsCard(),
          GroupsCard(),
        ],
      ),
    );
  }
}
