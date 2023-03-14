import 'package:flutter/material.dart';
import 'package:getx_mvvm/res/getx_localization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
import 'package:getx_mvvm/view/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'flutter demo',


      translations: Languages(),
      //locale: Locale('ur', 'PK'),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),


      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
