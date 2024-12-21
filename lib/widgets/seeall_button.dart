import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget{
  // final Widget widget;
  const SeeAllButton({super.key});
  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){},
      child: Text(
        HomeTexts.seeAll,
        style: TextStyles.seeAll
      )
    );
  }
}