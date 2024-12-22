import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:assignment5_ui/widgets/seeall_button.dart';
import 'package:flutter/cupertino.dart';

class RecommendedHeadingSub extends StatelessWidget{
  final String heading;

  const RecommendedHeadingSub({required this.heading, super.key});
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading, style: TextStyles.headingText.copyWith(
            color: AllColors.recSubHeadingGrey
          ),),
          SeeAllButton()
        ]
      )
    );
  }
}