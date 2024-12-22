import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/explore_icon_button.dart';
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
                    // left side heading
                    Heading(text: HomeTexts.nearby),
                    // right side navigation button
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
                              const SizedBox(width:3),
                              Text(
                                  HomeTexts.nearbySub,
                                  style: TextStyles.welcomeGreySmall.copyWith(
                                      color:AllColors.nearbyBlack,
                                      fontSize: 12
                                  )
                              )
                            ]
                        ),
                      ),
                    )
                  ]
              ),
              ExploreIconButton()
            ]
        )
    );
  }
}