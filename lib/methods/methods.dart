import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Methods{
  static List<Widget> ratingCounter(double rating){
    List<Widget> stars = [];
    for(int i =1; i<= 5; i++){
      if(i <= rating.toInt()){
        stars.add(SvgPicture.asset(HomeImages.starIcon, height: 16, width: 16));
      }else{
        stars.add(Icon(Icons.star, size: 22, color: AllColors.borderGrey));
      }
    }

    return stars;
  }
}