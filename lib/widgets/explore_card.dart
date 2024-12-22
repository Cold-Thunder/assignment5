import 'package:assignment5_ui/models/explore_card_models.dart';
import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final ExploreCardModel cardInfo;

  const ExploreCard({required this.cardInfo, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: SizedBox(
        height: 120,
        width: 120,
        child: Card(
          color: AllColors.appBarWhite,
          margin: const EdgeInsets.only(bottom: 20, right: 20),
          elevation: 5,
          shadowColor: AllColors.cardShadow,
          child: Column(
            children: [
              Container(
                width: 120,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(cardInfo.image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
              ),
              Container(
                height: 30,
                width: 120,
                alignment: Alignment.center,
                child: Text(cardInfo.title, style: TextStyles.exploreHeading),
              )
            ],
          ),
        ),
      ),
    );
  }
}
