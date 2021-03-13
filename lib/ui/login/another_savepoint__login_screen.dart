import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:redeinfo/ui/login/widgets/info_logo.dart';
import 'package:redeinfo/ui/login/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: _MyScrollBehavior(),
        child: Container(
          child: Center(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxHeight > 480 || context.isPortrait) {
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
              } else {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: <Widget>[
                      InfoLogo(),
                      SizedBox(width: 15),
                      Expanded(
                        child: SingleChildScrollView(
                          child: LoginForm(),
                        ),
                      ),
                    ],
                  ),
                );
              }
            }),
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
