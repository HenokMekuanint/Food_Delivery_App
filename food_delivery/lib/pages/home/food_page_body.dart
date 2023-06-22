import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimenstions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);
  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimension.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SLIDER SECTION
        Container(
          height: Dimension.pageview,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //DOT SECTION
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
        ),

        SizedBox(
          height: Dimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(
            left: Dimension.width30,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: SmallText(text: "Food Pairing"),
              )
            ],
          ),
        ),

        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (contex, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimension.width20,
                    right: Dimension.width20,
                    bottom: Dimension.height10),
                child: Row(
                  children: [
                    Container(
                      width: Dimension.listViewImgSize,
                      height: Dimension.listViewImgSize,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius20),
                          color: Colors.white38,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img7.jpg"))),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimension.listViewTextContSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(Dimension.radius20),
                                bottomRight:
                                    Radius.circular(Dimension.radius20)),
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimension.width10,
                              right: Dimension.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: "Nutrition Fruit meal in Ethiopia"),
                              SizedBox(
                                height: Dimension.height10,
                              ),
                              SmallText(text: "With ethiopian characteristics"),
                              SizedBox(
                                height: Dimension.height10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconAndTextWidet(
                                      icon: Icons.circle,
                                      text: "Normal",
                                      iconColor: AppColors.iconColor1),
                                  IconAndTextWidet(
                                      icon: Icons.location_on,
                                      text: "1.7KM",
                                      iconColor: AppColors.mainColor),
                                  IconAndTextWidet(
                                      icon: Icons.access_time_filled_rounded,
                                      text: "32min",
                                      iconColor: AppColors.iconColor2)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - ((_currPageValue - index) * (1 - _scaleFactor));
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + ((_currPageValue - index + 1) * (1 - _scaleFactor));
      var currTrans = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - ((_currPageValue - index) * (1 - _scaleFactor));

      var currTrans = _height * (1 - currScale) / 2;
      
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      var currTrans = _height * (1 - _scaleFactor) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimension.width10, right: Dimension.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius30),
                color: index.isEven ? Color(0XFF69c5df) : Color(0XFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img0.png"))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: EdgeInsets.only(
                  left: Dimension.width30,
                  right: Dimension.width30,
                  bottom: Dimension.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0))
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimension.height15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Ethiopian Side"),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "1287"),
                        SizedBox(
                          width: 10,
                        ),
                        SmallText(text: "comments")
                      ],
                    ),
                    SizedBox(
                      height: Dimension.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndTextWidet(
                            icon: Icons.circle,
                            text: "Normal",
                            iconColor: AppColors.iconColor1),
                        IconAndTextWidet(
                            icon: Icons.location_on,
                            text: "1.7KM",
                            iconColor: AppColors.mainColor),
                        IconAndTextWidet(
                            icon: Icons.access_time_filled_rounded,
                            text: "32min",
                            iconColor: AppColors.iconColor2)
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
