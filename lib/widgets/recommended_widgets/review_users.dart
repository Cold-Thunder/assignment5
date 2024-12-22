import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/recommended_images.dart';
import 'package:flutter/material.dart';

class ReviewUsers extends StatelessWidget{
  final double leftPadding;

  const ReviewUsers({required this.leftPadding, super.key});

  @override
  Widget build(BuildContext context){
    return Positioned(
      left: leftPadding,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width:2,
            color: AllColors.appBarWhite
          )
        ),
        child: CircleAvatar(
          backgroundColor: AllColors.appBarWhite,
          radius: 21,
          child: Image.asset(
            RecommendedImage.recReviewer,
            height: 40,
            width: 40,
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}