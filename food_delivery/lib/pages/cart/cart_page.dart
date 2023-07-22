import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimenstions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: Dimension.height20 * 3,
              left: Dimension.width20,
              right: Dimension.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      IconSize: Dimension.iconSize24,
                    ),
                  ),
                  SizedBox(
                    width: Dimension.width20 * 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MainFoodPage());
                    },
                    child: AppIcon(
                      icon: Icons.home_outlined,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      IconSize: Dimension.iconSize24,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AppIcon(
                      icon: Icons.shopping_cart,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      IconSize: Dimension.iconSize24,
                    ),
                  ),
                ],
              )),
          Positioned(
              top: Dimension.height20 * 6,
              left: Dimension.width10,
              right: Dimension.width10,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(top: Dimension.height15),
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  child: GetBuilder<CartController>(
                    builder: (cartController) {
                      return ListView.builder(
                          itemCount: cartController.getItems.length,
                          itemBuilder: (_, index) {
                            return Container(
                              height: Dimension.height20 * 6,
                              width: double.maxFinite,
                              margin:
                                  EdgeInsets.only(bottom: Dimension.height10),
                              child: Row(
                                children: [
                                  Container(
                                    width: Dimension.height20 * 5,
                                    height: Dimension.height20 * 5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                AppConstants.BASE_URL +
                                                    AppConstants.UPLOAD_URL +
                                                    cartController
                                                        .getItems[index].img!)),
                                        borderRadius: BorderRadius.circular(
                                            Dimension.radius20)),
                                  ),
                                  SizedBox(
                                    width: Dimension.width10,
                                  ),
                                  Expanded(
                                      child: Container(
                                    height: Dimension.height20 * 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BigText(
                                          text: cartController
                                              .getItems[index].name!,
                                          color: Colors.black54,
                                        ),
                                        SmallText(text: "Spicy"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BigText(
                                              text:
                                                  "\$ ${cartController.getItems[index].price}",
                                              color: Colors.redAccent,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: Dimension.height10,
                                                  horizontal:
                                                      Dimension.width10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Dimension.radius20),
                                                  color: Colors.white),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      // popularProduct.setQuantity(false);
                                                    },
                                                    child: Icon(
                                                      Icons.remove,
                                                      color:
                                                          AppColors.signColor,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        Dimension.width10 / 2,
                                                  ),
                                                  BigText(
                                                      text:
                                                          "0"), //popularProduct.inCartItems.toString()),
                                                  SizedBox(
                                                    width:
                                                        Dimension.width10 / 2,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      // popularProduct.setQuantity(true);
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      color:
                                                          AppColors.signColor,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
