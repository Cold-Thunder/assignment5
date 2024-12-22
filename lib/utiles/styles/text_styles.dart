import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static TextStyle welcomeGreySmall = TextStyle(
    fontSize: 10.9,
    color: AllColors.welcomeGrey
  );

  static TextStyle appBarUserBlack = TextStyle(
    fontSize: 14.8,
    fontFamily: 'Poppins-Bold',
    color: AllColors.appBarBlack
  );

  static TextStyle headingText = TextStyle(
    fontSize: 16.9,
    fontFamily: 'Poppins-Bold',
    color: AllColors.headingBlack
  );

  static TextStyle headingTextSmaller = TextStyle(
      fontSize: 13,
      fontFamily: 'Poppins-Regular',
      color: AllColors.recSubHeadingGrey,
    fontWeight: FontWeight.bold
  );

  static TextStyle recReviewDecStyle = TextStyle(
      fontSize: 10.2,
      fontFamily: 'Poppins-Regular',
      color: AllColors.recReviewDesBlack,
      fontWeight: FontWeight.bold
  );

  static TextStyle exploreHeading = TextStyle(
    fontSize: 11,
    fontFamily: 'Poppins-Regular',
    color: AllColors.exploreBlack
  );

  static TextStyle seeAll = TextStyle(
      fontSize: 18,
      color: AllColors.seeAllBlue
  );

  static TextStyle checkAvailStyle = TextStyle(
    fontSize: 18,
    color: AllColors.buttonGreen,
    fontFamily: 'Poppins-Regular',
    fontWeight: FontWeight.bold
  );

  static TextStyle ratingStyle = TextStyle(
    fontSize: 13.5,
    fontFamily: 'Poppins-Bold',
    color: AllColors.ratingBlack,
    fontWeight: FontWeight.w600
  );
}