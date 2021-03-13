import 'package:flutter/material.dart';
import 'package:redeinfo/common/drawer/custom_drawer.dart';
import 'package:redeinfo/ui/groups/widgets/groups_first_tab_view.dart';
import 'package:redeinfo/ui/groups/widgets/groups_second_tab_view.dart';

class GroupsScreen extends StatefulWidget {
  @override
  _GroupsScreenState createState() => _GroupsScreenState();
}

class _GroupsScreenState extends State<GroupsScreen>
    with SingleTickerProviderStateMixin {
  List<Tab> _myTabs = [
    Tab(
      icon: Icon(Icons.group_work),
      text: 'GRUPOS',
    ),
    Tab(
      icon: Icon(Icons.people),
      text: 'CLUBES',
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
        title: Text('Estudos em Grupo'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
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
          GroupsFirstTabView(),
          GroupsSecondTabView(),
        ],
      ),
    );
  }
}
