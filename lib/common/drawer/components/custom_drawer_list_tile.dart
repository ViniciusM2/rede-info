import 'package:flutter/material.dart';

class CustomDrawerListTile extends StatelessWidget {
  CustomDrawerListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  })  : icon = icon,
        title = title,
        onTap = onTap;

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListTile(
        leading: Icon(
          icon,
        ),
        title: Text(title, style: Theme.of(context).textTheme.subtitle2),
        onTap: onTap,
      ),
    );
  }
}
