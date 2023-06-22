import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimenstions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child:Container(
              margin: EdgeInsets.only(top:Dimension.height45,bottom:Dimension.height15),
              padding:EdgeInsets.only(left: Dimension.width20,right:Dimension.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: "Ethiopia",color:AppColors.mainBlackColor,size:30),
                      Row(
                        children: [
                          SmallText(text: "Addis Ababa",color: AppColors.mainColor,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ), 
                  Center( 
                    child: Container(
                      width: Dimension.height45, 
                      height: Dimension.height45,
                      child: Icon(Icons.search,color: Colors.white,size: Dimension.iconSize24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius15),
                        color:AppColors.mainColor,  
                      ),
                    ),
                  )
                ],
              ),
            )
          ),
          //showing the body
          Expanded(child: SingleChildScrollView(child: FoodPageBody()))
        ],
      ),
    );
  }
}
