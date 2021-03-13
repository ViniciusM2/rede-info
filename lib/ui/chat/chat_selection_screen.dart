import 'package:flutter/material.dart';
import 'package:redeinfo/ui/widgets/drawer/custom_drawer.dart';
import 'package:redeinfo/ui/chat/widgets/group_message_tab_view.dart';

import 'widgets/direct_message_tab_view.dart';

class ChatSelectionScreen extends StatefulWidget {
  @override
  _ChatSelectionScreenState createState() => _ChatSelectionScreenState();
}

class _ChatSelectionScreenState extends State<ChatSelectionScreen>
    with SingleTickerProviderStateMixin {
  List<Tab> _myTabs = [
    Tab(
      icon: Icon(Icons.group_work),
      text: 'DIRETAS',
    ),
    Tab(
      icon: Icon(Icons.people),
      text: 'EM GRUPO',
    ),
  ];

  TabController? _tabController;
  Color? currentColor;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversas'),
        actions: [
          //IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          PopupMenuButton(itemBuilder: (context) {
            return <PopupMenuEntry<dynamic>>[
              PopupMenuItem(
                child: Text('dolor sit amet'),
              ),
              PopupMenuItem(
                child: Text('sit dolor amet'),
              ),
              PopupMenuItem(
                child: Text('sit amet dolor'),
              ),
            ];
          })
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: _myTabs,
          indicatorColor: Theme.of(context).colorScheme.secondary,
          labelColor: Theme.of(context).colorScheme.secondary,
          unselectedLabelColor: Colors.white,
        ),
      ),
      drawer: CustomDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          DirectMessageTabView(),
          GroupMessageTabView(),
        ],
      ),
    );
  }
}
