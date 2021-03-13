import 'package:flutter/material.dart';

import 'link_to_login_screen.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: LinkToLoginScreen(),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'nome'),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 10,
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
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'senha',
            suffixIcon: Icon(
              Icons.visibility,
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'repita a senha',
            suffixIcon: Icon(Icons.visibility, color: Colors.amber),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'CADASTRAR',
          ),
        ),
      ],
    );
  }
}
