import 'package:get/route_manager.dart';
import 'package:redeinfo/bindings/feed_binding.dart';
import 'package:redeinfo/ui/feed/feed_screen.dart';
import 'package:redeinfo/ui/login/login_screen.dart';
import 'package:redeinfo/ui/sign_up/sign_up_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final values = <GetPage>[
    GetPage(
      name: Routes.FEED,
      page: () => FeedScreen(),
      binding: FeedBinding(),
    ),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    GetPage(name: Routes.SIGN_UP, page: () => SignUpScreen()),
  ];
}
