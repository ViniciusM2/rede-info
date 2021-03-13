import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:redeinfo/ui/sign_up/widgets/sign_up_form.dart';
import 'package:redeinfo/ui/widgets/info_logo.dart';

import 'widgets/link_to_login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            InfoLogo(),
                            SingleChildScrollView(
                              child: SignUpForm(),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(flex: 3, child: InfoLogo()),
                      SizedBox(width: 15,),
                      Flexible(
                        flex: 2,
                        child: SingleChildScrollView(
                          child: SignUpForm(),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
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
