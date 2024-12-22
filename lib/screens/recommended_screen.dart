import 'package:assignment5_ui/models/facility_models.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/bottom_review_card.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/facility_card.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/rating_section.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/recommended_heading.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/recommended_heading_sub.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/recommended_sub.dart';
import 'package:assignment5_ui/widgets/recommended_widgets/recommended_top_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RecommendedScreen extends StatelessWidget{
  RecommendedScreen({super.key});
  List<FacilityModels> facilityInfos = RecommendedTexts.facilitiesList;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // bottom navigation bar button
      bottomNavigationBar:
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: 80,
            decoration: BoxDecoration(
              color: AllColors.appBarWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -4),
                  color: AllColors.bottomCardShadow,
                  spreadRadius:3,
                  blurRadius: 10
                )
              ]
            ),
            child: ElevatedButton(
              onPressed: (){if (kDebugMode) {
                print('adad');
              }},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AllColors.startYellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              child: Text(
                  RecommendedTexts.checkAvailability,
                  style: TextStyles.checkAvailStyle
              )
            )
          ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top bar section is done
            RecommendedTopSection(),
            const SizedBox(height: 20),
            RecommendedHeading(),
            // recommended sub
            RecommendedSub(),
            const SizedBox(height: 20),
            // facility section
            RecommendedHeadingSub(heading: RecommendedTexts.facilities),
            const SizedBox(height: 10),
            // facility cards
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: facilityInfos.map((item){
                  return FacilityCard(model: item);
                }).toList()
              )
            ),
            // review section heading
            RecommendedHeadingSub(heading: RecommendedTexts.reviews),
            RatingSection(),
            // bottom review section
            BottomReviewCard()

          ],
        ),
      ),
    );
  }
}