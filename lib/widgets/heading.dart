import 'package:assignment5_ui/utiles/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';

class Heading extends StatelessWidget{
  final String text;
  const Heading({required this.text, super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: Text(text,
        style: TextStyles.headingText
      ),
    );
  }
}