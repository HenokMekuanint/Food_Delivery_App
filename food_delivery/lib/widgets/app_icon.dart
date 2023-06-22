import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/dimenstions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double IconSize;
  const AppIcon({
    Key? key,
    required this.icon,
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0XFF756d54),
    this.size = 40,
    this.IconSize=16,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: backgroundColor),
      child: Icon(
        icon,
        color: iconColor,
        size: IconSize
      ),
    );
  }
}
