import 'package:flutter/material.dart';
import 'package:travel_app_ui/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColor.secondaryColor,
              AppColor.tertiaryColor,
            ])),
        child: ListView(
          children: const [
            Padding(
              padding:
                  EdgeInsets.only(left: 25, right: 25, bottom: 50, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(),
                  RawMaterialButton(
                    constraints: BoxConstraints(minWidth: 0),
                    onPressed: null,
                    elevation: 2.0,
                    padding: EdgeInsets.all(8),
                    shape: CircleBorder(),
                    fillColor: Colors.white30,
                    child: Icon(
                      Icons.search_rounded,
                      color: AppColor.primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryText extends StatelessWidget {
  const PrimaryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Destination",
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 32,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
