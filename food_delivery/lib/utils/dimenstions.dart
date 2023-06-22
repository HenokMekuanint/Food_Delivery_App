import "package:get/get.dart";

class Dimension {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageview = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageviewContaier2 = screenHeight / 10;
  static double pageViewTextContainer = screenWidth / 7.03;

  //dymanic height padding and marign
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;

  //dynamic width padding and margin

  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  // font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  //raduis
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  static double radius15 = screenHeight / 56.27;
  //IconSize
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // list View Size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  static double popularFoodImgSize = screenHeight / 2.41;

  // botom height
  static double bottoHeightBar = screenHeight / 7.03;

  static double divideScreenHeight(double height) {
    return screenHeight / (840 / height);
  }

  static double divideScreenWidth(double width) {
    return screenWidth / (390 / width);
  }
}
