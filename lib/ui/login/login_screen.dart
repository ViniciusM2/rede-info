import 'package:flutter/material.dart';
import 'package:redeinfo/controller/services/user_service.dart';
import 'package:redeinfo/data/provider/user_provider.dart';
import 'package:redeinfo/data/repository/user_repository.dart';
import 'package:redeinfo/ui/widgets/info_logo.dart';
import 'package:redeinfo/ui/login/widgets/login_form.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final _height = Get.height.obs;
  get height => this._height.value;
  set height(value) => this._height.value = value;

  @override
  Widget build(BuildContext context) {
    Get.put(
      UserService(
        repository: UserRepository(
          userProvider: UserProvider(),
        ),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: _MyScrollBehavior(),
          child: Container(
            child: Center(
              child: OrientationBuilder(builder: (context, orientation) {
                height = Get.height;
                if (orientation == Orientation.portrait) {
                  return _VerticalLayout();
                } else {
                  if (context.height >= 600)
                    return _WideLayout();
                  else
                    return _HorizontalLayout();
                }
              }),
            ),
          ),
        ),
      ),
    );
  }
}

class _MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class _HorizontalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: InfoLogo(),
          ),
          SizedBox(
            width: 15,
          ),
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}

class _VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Spacer(),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InfoLogo(),
                LoginForm(),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class _WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Spacer(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InfoLogo(),
                LoginForm(),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
