import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/controller/services/user_service.dart';
import 'package:redeinfo/ui/login/login_screen.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String imageUrl = Get.find<UserService>().profilePhotoUrl.isURL
      ? Get.find<UserService>().profilePhotoUrl
      : 'https://upload.wikimedia.org/wikipedia/commons/6/6c/Vesta-Roma.jpg';
  final String name = Get.find<UserService>().userName;

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
