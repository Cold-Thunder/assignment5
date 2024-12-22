import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NearbyLocationCard extends StatelessWidget {
  const NearbyLocationCard({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      padding: const EdgeInsets.only(left: 15),
      width: width,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(HomeImages.nearby),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            width: width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(HomeTexts.nearbyLocation,
                    style: TextStyles.headingText.copyWith(
                        fontSize: 14,
                        color: AllColors.nearbyBlack),),
                Row(
                  spacing: 5,
                  children: [
                    SizedBox(
                        child: Image.asset(HomeImages.distanceIcon, height: 9, width: 20),
                    ),
                    Text(
                      HomeTexts.nearbyDistance,
                      style: TextStyles.welcomeGreySmall.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        HomeTexts.nearbySubDet,
                        style: TextStyles.welcomeGreySmall
                            .copyWith(fontSize: 10.3),
                      ),
                      // SizedBox(width: 20),
                      SizedBox(
                        width: 50,
                        child: Row(
                          children: [
                            SvgPicture.asset(HomeImages.starIcon),
                            SizedBox(width: 5),
                            Text(
                              HomeTexts.nearbyRating,
                              style: TextStyles.headingText.copyWith(
                                fontSize: 13.8,
                                color: AllColors.nearbyRatingBlack
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
