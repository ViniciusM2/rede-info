import 'package:flutter/material.dart';
import 'package:redeinfo/ui/sign_up/sign_up_screen.dart';

class LinkToSignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        ),
      ),
      child: RichText(
        textAlign: TextAlign.center,
        textScaleFactor: MediaQuery.textScaleFactorOf(context),
        text: TextSpan(
          style: Theme.of(context).textTheme.subtitle2,
          children: <TextSpan>[
            TextSpan(
              text: 'Não tem uma conta? ',
            ),
            TextSpan(
                text: 'Cadastre-se.',
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
