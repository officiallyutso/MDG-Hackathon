import 'package:flutter/material.dart';
import 'package:login_signup/screens/calender.dart';
import 'package:login_signup/screens/welcome_screen.dart';
import 'package:login_signup/theme/theme.dart';
import 'package:login_signup/screens/home_page.dart';
import 'package:login_signup/screens/signin_screen.dart';
import 'screens/more.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightMode,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/homepage':(context) => const HomePage(),
        '/morepage':(context) => MorePage(),
        '/calendar':(context) => Calendar(),
      },
    );
  }
}
