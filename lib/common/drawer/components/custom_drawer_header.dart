import 'package:flutter/material.dart';
import 'package:redeinfo/ui/login/login_screen.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String imageUrl =
      "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=367&q=80";
  final String name = 'Diogo Vieira';

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'log out',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
