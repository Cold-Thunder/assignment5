import 'package:assignment5_ui/models/explore_card_models.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';
import 'package:assignment5_ui/utiles/all_texts/home_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/explore_card.dart';
import 'package:assignment5_ui/widgets/heading.dart';
import 'package:assignment5_ui/widgets/recommanded_card.dart';
import 'package:assignment5_ui/widgets/seeall_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Home extends StatelessWidget {
  Home({super.key});

  // expo cards info
  final List<ExploreCardModel> expoCardInfos = HomeTexts.exCardInfos;
  final List listLength = [1, 2];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          // appBar leading
          leading: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(

                shape: BoxShape.circle,
                border: GradientBoxBorder(
                    gradient: LinearGradient(
                        colors: [
                          AllColors.borderBlue,
                          AllColors.borderBlue2
                        ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft
                    ),
                  width: 2
                ),
              ),
              child: CircleAvatar(
                radius: 25,
                child: Image.asset('assets/images/vegetables.png',
                    height: 30, width: 30),
              ),
            ),
          ),
          titleSpacing: 10,
          title: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(HomeTexts.welcome, style: TextStyles.welcomeGreySmall),
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
            SizedBox(
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
            )
          ],
        ),
      ),
    );
  }
}
