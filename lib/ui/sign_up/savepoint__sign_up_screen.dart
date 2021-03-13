import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widgets/link_to_login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Expanded(
                  flex: context.isPortrait ? 8 : 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset('assets/svg/logoh.svg'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: LinkToLoginScreen(),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'nome'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'email',
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'senha',
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                        //keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'repita a senha',
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.amber),
                        ),
                        //keyboardType: TextInputType.emailAddress,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'CADASTRAR',
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
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
