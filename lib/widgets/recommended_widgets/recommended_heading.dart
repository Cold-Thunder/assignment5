import 'package:assignment5_ui/utiles/all_texts/recmmended_texts.dart';
import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class RecommendedHeading extends StatelessWidget{
  const RecommendedHeading({super.key});
  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.only(left: 15),
        width: width*0.8,
        child: Text(
            RecommendedTexts.title,
            style: TextStyles.headingText.copyWith(
              fontSize: 28,
            )
        )
    );
  }
}