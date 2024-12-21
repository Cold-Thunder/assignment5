import 'package:assignment5_ui/screens/home.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget{
  const HomeMain({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: HomeTexts.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AllColors.appBarWhite,
        appBarTheme: AppBarTheme(
          backgroundColor: AllColors.appBarWhite,
        )
      ),
      home: Home()
    );
  }
}