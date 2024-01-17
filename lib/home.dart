import 'package:flutter/material.dart';
import 'package:travel_app_ui/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter, end: Alignment.bottomCenter,
            colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ]
          )
        ),
      ),
    );
  }
}
