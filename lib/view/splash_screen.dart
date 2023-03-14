import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/res/assets/image_assets.dart';
import 'package:getx_mvvm/res/component/general_exception.dart';
import 'package:getx_mvvm/res/component/internet_exceptions.dart';
import 'package:getx_mvvm/res/component/round_button.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('email_hint'.tr)),
      ),
      // body: Container(
      //   child: Image.asset('assets/images/splash.png'),
      // ),
      //body: GeneralExceptionWidget(onPress: (){},),
      body: Column(
        children: [
          RoundButton(title: 'login', onPress: (){}, width: double.infinity, loading: true,),
          RoundButton(title: 'signup', onPress: (){}, width: 200,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Utils.toastMessageCenter('voldigod');
          Utils.toastMessage('demon king');
        },
      ),
    );
  }
}
