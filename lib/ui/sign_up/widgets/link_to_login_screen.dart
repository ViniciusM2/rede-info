import 'package:flutter/material.dart';
import 'package:redeinfo/ui/login/login_screen.dart';

class LinkToLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      ),
      child: RichText(
        textAlign: TextAlign.center,
        textScaleFactor: MediaQuery.textScaleFactorOf(context),
        text: TextSpan(
          style: Theme.of(context).textTheme.subtitle2,
          children: <TextSpan>[
            TextSpan(
              text: 'Já tem uma conta? ',
            ),
            TextSpan(
                text: 'Entre já!',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(decoration: TextDecoration.underline)),
          ],
        ),
      ),
    );
  }
}
