// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'auth/notification_screen.dart';
import 'auth/login_screen.dart';


import 'global/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (state) => kSecondaryColor,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith(
              (state) => kPrimaryColor,
            ),
          ),
        ),
      )
      .copyWith(
        // change the focus border color of the TextField
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: kPrimaryColor,
            ),
        // change the focus border color when the errorText is set
        // errorColor: Colors.purple,
      ),
    initialRoute:  NotificationsPage.LoginP,
      //home:  const NotificationsPage(),
      routes: {
        NotificationsPage.LoginP:(context) => NotificationsPage(),
         LoginPage.LoginP:(context) => LoginPage(),
      },
    );
  }
}
