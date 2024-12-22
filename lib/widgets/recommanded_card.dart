import 'package:assignment5_ui/screens/recommended_screen.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecommandedCard extends StatefulWidget {
  const RecommandedCard({super.key});

  @override
  State<RecommandedCard> createState() => _RecommandedCardState();
}

class _RecommandedCardState extends State<RecommandedCard> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> RecommendedScreen()
        ),);
      },
      child: Container(
        width: 300,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: AllColors.appBarWhite
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // image section
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: 300,
                        width: 195,
                        decoration: BoxDecoration(
                            color: AllColors.seeAllBlue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage(HomeImages.recLeft),
                              fit: BoxFit.cover,
                            ))),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 5),
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AllColors.seeAllBlue,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                            ),
                            image: DecorationImage(
                              image: AssetImage(HomeImages.recRightTop),
                              fit: BoxFit.cover,
                              scale: 1.5
                            ),
                          ),
                        ),
                        Container(
                          height: 145,
                          width: 100,
                          decoration: BoxDecoration(
                            color: AllColors.seeAllBlue,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage(HomeImages.recRightBottom),
                              fit: BoxFit.cover,
                              scale: 1.5
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // star icon section
                Positioned(
                  top: 15,
                  left: 15,
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AllColors.appBarWhite),
                    child: Row(
                      children: [
                        SvgPicture.asset(HomeImages.starIcon,
                            height: 18, width: 18),
                        SizedBox(width: 5),
                        Text(
                          HomeTexts.rating,
                          style: TextStyles.exploreHeading.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                // location icon section
                Positioned(
                  top: 250,
                  left: 15,
                  child: Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AllColors.appBarWhite),
                    child: Row(
                      children: [
                        Icon(Icons.location_on,
                            size: 22, color: AllColors.borderBlue),
                        SizedBox(width: 5),
                        Text(
                          HomeTexts.locationName,
                          style: TextStyles.exploreHeading.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // bottom text section
            SizedBox(
              // height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(HomeTexts.locationTitle,
                          style: TextStyles.headingText),
                      Text(HomeTexts.locationSub,
                          style: TextStyles.welcomeGreySmall)
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isTrue = !isTrue;
                      });
                    },
                    icon: Icon(
                        isTrue == false
                            ? Icons.favorite_border_outlined
                            : Icons.favorite,
                        size: 28,
                        color: isTrue == false
                            ? AllColors.appBarBlack
                            : AllColors.red),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
