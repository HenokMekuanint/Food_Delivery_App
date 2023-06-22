import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimenstions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
class RecommendFoodDetail extends StatelessWidget {
  const RecommendFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                  AppIcon(
                    icon: Icons.clear
                    ),
                    AppIcon(
                    icon: Icons.shopping_cart_outlined
                    )

                
              ],
            ),
            bottom: PreferredSize(
              
              child: Container(
                
                
                child: Center(
                  child:
                   BigText(
                    text: "Ethiopian Side",
                    size: Dimension.font26,
                    )
                  
                  ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20)
                  )
                ),
                ), 
              
              preferredSize: Size.fromHeight(20)
              
              ),
            expandedHeight: 300,
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/img0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
         SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimension.width20),
                child: ExpandableTextWidget(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliquam erat volutpat. Sed ut dui ut lacus dictum fermentum vel tincidunt neque. Sed sed lacinia lectus. Duis sit amet sodales felis. Duis nunc eros, mattis at dui ac, convallis semper risus. In adipiscing ultrices tellus, in suscipit massa vehicula eu.“Rrow itself, let it be sorrow; let him love it; let him pursue it, ishing for its acquisitiendum. Because he will ab hold, uniess but through concer, and also of those who resist. Now a pure snore disturbeded sum dust. He ejjnoyes, in order that somewon, also with a severe one, unless of life. May a cusstums offficer somewon nothing of a poison-filled. Until, from a twho, twho chaffinch may also pursue it, not even a lump. But as twho, as a tank; a proverb, yeast; or else they tinscribe nor. Yet yet dewlap bed. Twho may be, let him love fellows of a polecat. Now amour, the, twhose being, drunk, yet twhitch and, an enclosed valley’s always a laugh. In acquisitiendum the Furies are Earth; in (he takes up) a lump vehicles bien.But I must explain to you how all this mistaken idea of reprobating pleasure and extolling pain arose. To do so, I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? [33] On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."),
              )
            ],
          )
         )
        ],
      ),



      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(
            padding: EdgeInsets.symmetric(horizontal: Dimension.width20*2.5,vertical: Dimension.height10),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  size: Dimension.iconSize24,),

                  BigText(text: "\$12.88 "+" X "+" 0 ",color: AppColors.mainBlackColor,size: Dimension.font26,),
                AppIcon(
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                  size: Dimension.iconSize24,)

                  
              ],
             ),
           ),
           Container(
          height: Dimension.bottoHeightBar,
          padding: EdgeInsets.symmetric(
            vertical:Dimension.height30,horizontal: Dimension.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimension.radius20*2),
              topRight: Radius.circular(Dimension.radius20*2)




            )
          ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical:Dimension.height15,horizontal: Dimension.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white
              ),
              child: Icon(
                Icons.favorite,
                color: AppColors.mainColor,
              )
            ),
 

Container(
  padding: EdgeInsets.symmetric(vertical:Dimension.height15,horizontal: Dimension.width20),
  child: BigText(text:"\$10 | Add to cart",color: Colors.white,),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(Dimension.radius20),
    color: AppColors.mainColor
  ),
) 
          ],
        ),
        ),
        ],
      ),
    );
  }
}

