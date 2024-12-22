import 'package:assignment5_ui/models/explore_card_models.dart';
import 'package:assignment5_ui/utiles/all_images/home_images.dart';

class HomeTexts{
  static String title = 'Assignment 5';
  static String welcome = 'Welcome back';
  static String userName = 'Jovanca Azalea';
  static String seeAll = 'See All';

  // headings
  static String exploreStay = "Explore Stay";
  static String recommended = 'Recommended';
  static String nearby = 'Nearby Resort';


  //explore card titles
  static String lombok = 'Lombok';
  static String bali = 'Bali';
  static String rajampat = 'Raja Ampat';

  // location title
  static String locationName = 'Bandung';
  static String rating = '4.9';
  static String locationTitle = 'Citadines Berawa';
  static String locationSub = 'Start from \$35 per night';

  static String nearbySub = 'DKI Jakarta';
  static String nearbyLocation = 'Double Six Luxuary';
  static String nearbyDistance = '14.5 km';
  static String nearbySubDet = 'Start from \$35 per night';
  static String nearbyRating = '4.9';


  // expolore cards

  static List<ExploreCardModel> exCardInfos= [
    ExploreCardModel(image: HomeImages.lambok, title: HomeTexts.lombok),
    ExploreCardModel(image: HomeImages.bali, title: HomeTexts.bali),
    ExploreCardModel(image: HomeImages.raja, title: HomeTexts.rajampat),
    ExploreCardModel(image: HomeImages.raja, title: HomeTexts.rajampat),
  ];
  //
}