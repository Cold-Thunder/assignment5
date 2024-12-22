import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/explore_icon_button.dart';
import 'package:flutter/material.dart';

class RecommendedSub extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.location_on, size: 22, color: AllColors.seeAllBlue),
          const SizedBox(width: 5),
          SizedBox(
            width: width*0.6,
            child: Text(RecommendedTexts.sub, style: TextStyles.welcomeGreySmall.copyWith(
              fontSize: 14
            ),),
          ),
          Spacer(),
          ExploreIconButton()
        ]
      )
    );
  }
}