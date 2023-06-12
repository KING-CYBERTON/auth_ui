
import 'package:auth_ui/Views/welcome.dart';
import 'package:flutter/material.dart';
import 'package:auth_ui/Views/Login.dart';
import 'package:auth_ui/Views/SignUp.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tree Life',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      getPages: [

        GetPage(name: '/login', page: () => const LoginInPage()),
        GetPage(name: '/signup', page: () => const SignUpPage()),
        GetPage(name: '/Welcome', page: () => WelcomePage()),
      ],
      initialRoute: '/',
    );
  }
}
