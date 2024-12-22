import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreIconButton extends StatelessWidget{
  const ExploreIconButton({super.key});
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      child: Container(
          margin: const EdgeInsets.only(right: 15),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: AllColors.navigationGreen,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,0),
                  color: AllColors.shadowGreen,
                  spreadRadius: 5,
                )
              ]
          ),
          child: Transform.rotate(
              angle: 0.75,
              child: Icon(Icons.navigation, color: AllColors.appBarWhite, size: 20))
      ),
    );
  }
}