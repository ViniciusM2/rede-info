import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:redeinfo/ui/dashboard/dashboard_screen.dart';

import 'widgets/link_to_sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                    Container(
                      child: SvgPicture.asset(
                        'assets/svg/logoh.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: LinkToSignUpScreen(),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'email',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'senha',
                        suffixIcon: Icon(Icons.visibility,
                            color: Theme.of(context).accentColor),
                      ),
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: Text(
                        'Esqueci minha senha',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => DashboardScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'ENTRAR',
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
