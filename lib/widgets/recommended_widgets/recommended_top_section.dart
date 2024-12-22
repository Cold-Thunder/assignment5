import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/recommended_images.dart';
import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';

class RecommendedTopSection extends StatelessWidget{
  const RecommendedTopSection({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 300,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(RecommendedImage.recTopImg),
                fit: BoxFit.cover
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 15,
          child: IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: AllColors.appBarWhite
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp, size: 22, color: AllColors.appBarBlack)
          ),
        ),
        Positioned(
          top: 290,
          left: 15,
          child: Container(
            width: width,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, -5),
                      color: AllColors.shadowWhite,
                      spreadRadius: 10,
                      blurRadius: 20
                  )
                ]
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              height: 25,
              width: 160,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: AllColors.recommendOrange,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Text(RecommendedTexts.recommendNotice,
                  style: TextStyles.welcomeGreySmall.copyWith(
                      color: AllColors.appBarWhite
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}