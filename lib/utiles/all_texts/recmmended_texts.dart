import 'package:assignment5_ui/models/bottom_review_model.dart';
import 'package:assignment5_ui/models/facility_models.dart';
import 'package:flutter/material.dart';

class RecommendedTexts {
  static String recommendNotice = 'Recommended Resort';
  static String title = 'Pullman Bali Legian Beach';
  static String sub = '1 Jala Melasti, Bali, 80361 Legian, Indonesia';
  static String facilities = 'Facilities';
  static String reviews = "Reviews";

  //facilities card title
  static String restaurant = 'Restaurant';
  static String pool = 'Pool';
  static String wifi = 'Wifi';
  static String parking = 'Parking';

  static String rating = '4.6';

  static String bottomReviewTitle = 'Rakabuming Suhu';
  static String bottomReview = 'Pullman Bali Legian Beach. Pullman Bali Legian Beach. Pullman Bali Legian Beach. Pullman Bali Legian Beach';
  static String reviewDate = '6 Feb';
  static int bottomReviewRating = 4;

  static String checkAvailability = 'Check Availability Room';

  // all facilities
  static List<FacilityModels> facilitiesList = [
    FacilityModels(title: RecommendedTexts.restaurant, icon: Icon(Icons.doorbell, size: 30)),
    FacilityModels(title: RecommendedTexts.pool, icon: Icon(Icons.pool, size: 30)),
    FacilityModels(title: RecommendedTexts.wifi, icon: Icon(Icons.wifi, size: 30)),
    FacilityModels(title: RecommendedTexts.parking, icon: Icon(Icons.local_parking, size: 30)),
  ];

  static List<BottomReviewModel> bottomReviews = [
    BottomReviewModel(
        name: RecommendedTexts.bottomReviewTitle,
        date:RecommendedTexts.reviewDate,
        rating: RecommendedTexts.bottomReviewRating,
        reviewDes: RecommendedTexts.bottomReview)
  ];
}