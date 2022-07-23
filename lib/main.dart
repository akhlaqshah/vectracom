import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vectracom/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
              elevation: 0.0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold))),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0.0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          textTheme: const TextTheme(
            bodyText1: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
            bodyText2: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w500),
            headline1: TextStyle(
                color: Colors.blue,
                fontSize: 40.0,
                fontWeight: FontWeight.w700),
          )),
      home: const MainPage(),
    );
  }
}
