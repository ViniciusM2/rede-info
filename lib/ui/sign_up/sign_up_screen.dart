import 'package:flutter/material.dart';
import 'package:redeinfo/ui/sign_up/widgets/sign_up_form.dart';
import 'package:redeinfo/ui/widgets/info_logo.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: _MyScrollBehavior(),
          child: Center(
            child: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return _VerticalLayout();
                } else {
                  if (context.height >= 600)
                    return _WideLayout();
                  else
                    return _HorizontalLayout();
                }
              },
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
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(flex: 3, child: InfoLogo()),
          SizedBox(
            width: 15,
          ),
          Flexible(
            flex: 2,
            child: SingleChildScrollView(
              child: SignUpForm(),
            ),
          ),
          // Flexible(child: Text('${context.height}'))
        ],
      ),
    );
  }
}

class _VerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  }
}
