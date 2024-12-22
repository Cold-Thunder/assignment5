import 'package:assignment5_ui/models/facility_models.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';

class FacilityCard extends StatelessWidget{
 final FacilityModels model;

  const FacilityCard({required this.model, super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 110,
      width: 80,
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: AllColors.borderGrey
              )
            ),
            child: model.icon
          ),
          SizedBox(height: 10),
          Text(model.title, style: TextStyles.exploreHeading.copyWith(
            fontSize:14
          ))
        ]
      )
    );
  }
}