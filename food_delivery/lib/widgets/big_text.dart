import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimenstions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText(
      {Key? key,
      this.color= const Color(0XFF332d2d),
      this.size = 20,
      required this.text,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontWeight:FontWeight.w400,
        fontSize: size==0?Dimension.font20:size
        ),

    );
  }
}
