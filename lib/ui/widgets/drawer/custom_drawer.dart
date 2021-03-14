import 'package:flutter/material.dart';
import 'package:redeinfo/ui/chat/chat_selection_screen.dart';
import 'package:redeinfo/ui/dashboard/dashboard_screen.dart';
import 'package:redeinfo/ui/feed/feed_screen.dart';
import 'package:redeinfo/ui/groups/groups_screen.dart';

import 'components/custom_drawer_header.dart';
import 'components/custom_drawer_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CustomDrawerHeader(),
          CustomDrawerListTile(
            icon: Icons.chat,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ChatSelectionScreen(),
                ),
              );
            },
            title: 'Chat',
          ),
          CustomDrawerListTile(
            icon: Icons.thumb_up,
            title: 'Feed',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FeedScreen(),
                ),
              );
            },
          ),
          CustomDrawerListTile(
            icon: Icons.dashboard,
            title: 'Dashboard',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DashboardScreen(),
                ),
              );
            },
          ),
          CustomDrawerListTile(
            icon: Icons.group_work,
            title: 'Clubes e Grupos de Estudo',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GroupsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
