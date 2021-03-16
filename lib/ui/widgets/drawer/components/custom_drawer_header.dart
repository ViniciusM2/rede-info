import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/controller/services/user_service.dart';
import 'package:redeinfo/routes/app_routes.dart';
import 'package:redeinfo/ui/login/login_screen.dart';

class CustomDrawerHeader extends StatelessWidget {
  final controller = Get.find<UserService>();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                  image: controller.profilePhotoUrl.isNotEmpty && !GetPlatform.isWeb
                      ? DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(controller.profilePhotoUrl),
                        )
                      : null,
                ),
              )),
          SizedBox(
            height: 7,
          ),
          Obx(() => Text(
                controller.userName,
                style: Theme.of(context).textTheme.headline6,
                maxLines: 1,
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.LOGIN);
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
