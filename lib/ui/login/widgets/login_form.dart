import 'package:flutter/material.dart';
import 'package:redeinfo/ui/dashboard/dashboard_screen.dart';

import 'link_to_sign_up_screen.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            suffixIcon:
                Icon(Icons.visibility, color: Theme.of(context).accentColor),
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
    );
  }
}
