import 'package:assignment5_ui/utiles/all_colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonStyle{
  static ButtonStyle checkAvailStyle = ElevatedButton.styleFrom(
      backgroundColor: AllColors.startYellow,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    )
  );
}