import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/heading.dart';
import 'package:flutter/material.dart';

class NearbyHeadingSection extends StatelessWidget{
  const NearbyHeadingSection({super.key});
  @override
  Widget build(BuildContext context){
    return SizedBox(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Heading(text: HomeTexts.nearby),
                    InkWell(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                            children: [
                              Icon(
                                  Icons.location_on,
                                  color: AllColors.seeAllBlue,
                                  size: 20
                              ),
                              Text(
                                  HomeTexts.nearbySub,
                                  style: TextStyles.welcomeGreySmall.copyWith(
                                      color:AllColors.appBarBlack,
                                      fontSize: 14
                                  )
                              )
                            ]
                        ),
                      ),
                    )
                  ]
              ),
              InkWell(
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
              )
            ]
        )
    );
  }
}