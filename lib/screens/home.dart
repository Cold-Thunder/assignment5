import 'package:assignment5_ui/models/explore_card_models.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/explore_card.dart';
import 'package:assignment5_ui/widgets/heading.dart';
import 'package:assignment5_ui/widgets/nearby_heading_section.dart';
import 'package:assignment5_ui/widgets/nearby_location_card.dart';
import 'package:assignment5_ui/widgets/recommanded_card.dart';
import 'package:assignment5_ui/widgets/seeall_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // expo cards info
  final List<ExploreCardModel> expoCardInfos = HomeTexts.exCardInfos;
  final List listLength = [1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AllColors.appBarWhite,
          statusBarIconBrightness: Brightness.dark
        ),
          // appBar leading
          leading: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                        strokeWidth: 3,
                      strokeCap: StrokeCap.round,
                      value: 0.75,
                      valueColor: AlwaysStoppedAnimation<Color>(AllColors.seeAllBlue),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.asset('assets/images/vegetables.png',
                          height: 30, width: 30),
                    ),
                  ),
                ],
              ),
            )
          ),
          leadingWidth: 65,
          titleSpacing: 10,
          title: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(HomeTexts.welcome, style: TextStyles.welcomeGreySmall),
                SizedBox(height: 5),
                Text(HomeTexts.userName, style: TextStyles.appBarUserBlack)
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('search button');
                  }
                },
                icon: SvgPicture.asset(HomeImages.searchIcon,
                    height: 24, width: 24)),
            SizedBox(width: 15)
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // heading section
            Heading(text: HomeTexts.exploreStay),
            const SizedBox(height: 20),

            // explore card
            Container(
              height: 140,
              margin: const EdgeInsets.only(left: 15),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: expoCardInfos.length,
                itemBuilder: (context, index) {
                  return ExploreCard(
                    cardInfo: expoCardInfos[index],
                  );
                },
              ),
            ),
            // recommended heading
            SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Heading(text: HomeTexts.recommended),
                  SeeAllButton()
                ])),
            const SizedBox(height: 20),
            Container(
                padding: const EdgeInsets.only(left: 15),
                height: 380,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return RecommandedCard();
                    },),),
            const SizedBox(height: 20),
            // nearby section heading
            NearbyHeadingSection(),
            const SizedBox(height: 20),
            // nearby location section
            NearbyLocationCard()
          ],
        ),
      ),
    );
  }
}
