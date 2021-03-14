import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:redeinfo/ui/login/login_screen.dart';
import 'package:flutter/services.dart';

import 'routes/app_pages.dart';
import 'ui/login/login_screen.dart';
import 'ui/widgets/info_logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
      future: _initialization,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    Text('Ah, não! Aconteceu um erro!'),
                  ],
                ),
              ),
            ),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: buildTheme(),
            home: LoginScreen(),
            getPages: AppPages.values,
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Container(
              color: Colors.black,
              child: Column(
                children: [
                  InfoLogo(),
                  Text('Carregando...'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//Essa função retorna o tema dessa aplicação
ThemeData buildTheme() {
  return ThemeData.from(
    colorScheme: ColorScheme(
      primary: Colors.amber[500]!,
      primaryVariant: Colors.amber[800]!,
      secondary: Color(0xFF03DAC5),
      secondaryVariant: Color(0xFF005457),
      surface: Color(0xFF121212),
      background: Color(0xFF121212), //
      error: Color(0xFFCF6679),
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.black,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(fontWeight: FontWeight.w300, fontSize: 96),
      headline2: TextStyle(fontWeight: FontWeight.w300, fontSize: 60),
      headline3: TextStyle(fontWeight: FontWeight.w400, fontSize: 48),
      headline4: TextStyle(fontWeight: FontWeight.w400, fontSize: 34),
      headline5: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
      headline6: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      subtitle1: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      subtitle2: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
      bodyText1: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
      bodyText2: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
      button: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Colors.black,
          letterSpacing: 2),
      caption: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
      overline: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
    ),
  ).copyWith(
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(),
      border: OutlineInputBorder(),
      //alignLabelWithHint: true,
    ),
    buttonColor: Colors.amber[500],
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    ),
    appBarTheme:
        AppBarTheme(color: Colors.transparent, elevation: 0, centerTitle: true),
  );
}
