import 'package:flutter/material.dart';
import 'package:travel_app_ui/colors.dart';

class PrimaryText extends StatelessWidget {
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String text;

  const PrimaryText({
    super.key,
    this.size = 16,
    this.fontWeight = FontWeight.w600,
    this.color = AppColor.primaryColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
