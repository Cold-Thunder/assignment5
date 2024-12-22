import 'package:assignment5_ui/methods/methods.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/recommended_images.dart';
import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';

class BottomReviewCard extends StatelessWidget{
  BottomReviewCard({super.key});

  List<Widget> reviews = Methods.ratingCounter(4);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 133,
      child: Column(
        spacing: 15,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image section
              CircleAvatar(
                  backgroundColor: AllColors.appBarWhite,
                  radius: 23,
                  child: Image.asset(RecommendedImage.recReviewer,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover
                  ),
              ),
              const SizedBox(width: 15),
              // name section and rating section
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name
                  Text(RecommendedTexts.bottomReviewTitle, style: TextStyles.headingTextSmaller),
                  // rating
                  Row(
                  children: reviews.map((item){
                    return item;
                  }).toList()
                  )
                ]
              ),
              Spacer(),
              // date section
              Text(RecommendedTexts.reviewDate, style: TextStyles.welcomeGreySmall)
            ]
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: SizedBox(
              height: 60,
              child: Text(RecommendedTexts.bottomReview, style: TextStyles.headingTextSmaller.copyWith(
                fontSize: 14,
                overflow: TextOverflow.fade
              ),)
            ),
          )
        ],
      )
    );
  }
}