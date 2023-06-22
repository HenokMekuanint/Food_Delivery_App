import "package:flutter/cupertino.dart";
import 'package:food_delivery/utils/dimenstions.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconAndTextWidet extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconAndTextWidet(
      {Key? key, required this.icon, required this.text, required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimension.iconSize24,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(text: text,),
      ],
    );
  }
}
