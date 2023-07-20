import 'package:news_app/layout/homeLayout.dart';
import 'package:news_app/modules/aa_shop_app/theme.dart';
import 'package:news_app/modules/home/HomeScreen.dart';
import 'package:news_app/modules/login/LoginScreen.dart';
import 'package:news_app/modules/messenger_screen/MessengerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/news/newsLayout.dart';
import 'layout/news/remotes/dio_helper.dart';
import 'modules/aa_shop_app/on_boarding/onBoarding.dart';
import 'modules/counter/counter.dart';
import 'modules/bmi_result/BmiResult.dart';

void main(){

  DioHelper.initial();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,

      home: NewsLayout(),

    );
  }



}