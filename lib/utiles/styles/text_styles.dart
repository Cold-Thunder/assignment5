import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class TextStyles{
  static TextStyle welcomeGreySmall = TextStyle(
    fontSize: 16,
    color: AllColors.welcomeGrey
  );

  static TextStyle appBarUserBlack = TextStyle(
    fontSize: 20,
    fontFamily: 'Poppins-Bold',
    color: AllColors.appBarBlack
  );

  static TextStyle headingText = TextStyle(
    fontSize: 22,
    fontFamily: 'Poppins-Bold',
    color: AllColors.appBarBlack
  );

  static TextStyle headingTextSmaller = TextStyle(
      fontSize: 17,
      fontFamily: 'Poppins-Regular',
      color: AllColors.recSubHeadingGrey,
    fontWeight: FontWeight.bold
  );

  static TextStyle exploreHeading = TextStyle(
    fontSize: 14,
    fontFamily: 'Poppins-Regular',
    color: AllColors.appBarBlack
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
}