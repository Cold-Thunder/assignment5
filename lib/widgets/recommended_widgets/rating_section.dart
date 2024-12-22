import 'package:assignment5_ui/methods/methods.dart';
import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/review_users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingSection extends StatelessWidget{
  RatingSection({super.key});
  final List<Widget> ratingStars = Methods.ratingCounter(4.6);
  final List<Widget> users = [
    ReviewUsers(leftPadding: 0,),
    ReviewUsers(leftPadding: 30),
    ReviewUsers(leftPadding: 60),
    ReviewUsers(leftPadding: 90),
  ];
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(RecommendedTexts.rating, style: TextStyles.headingText),
            const SizedBox(width: 10),
            Row(
              spacing: 5,
              children: ratingStars.map((item){
                return item;
              }).toList()
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.only(right: 15),
              height: 50,
              width: 160,
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: users.toList()
              ),
            )
          ]
        ),
    );
  }
}