import 'package:flutter/material.dart';
import 'package:travel_app_ui/colors.dart';
import 'package:travel_app_ui/constant.dart';
import 'package:travel_app_ui/style.dart';

class DestinationDetail extends StatelessWidget {
  final String imagePath;

  const DestinationDetail(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width - 60,
        height: 56,
        child: TextButton(
          onPressed: () => {},
          //color: AppColor.lightSecondary,
          child: const PrimaryText(
            text: "Select Location",
            size: 20,
          ),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customAppBar(context),
                Container(
                  height: 500,
                  padding: const EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColor.secondaryColor,
                            AppColor.lightTertiaryColor,
                          ])),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: PrimaryText(
                          text: "Japan",
                          size: 26,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: PrimaryText(
                          text: "Discover the pulsating neon energy of Tokyo, "
                              "where cutting-edge technology seamlessly blends with centuries-old traditions,"
                              " offering endless delights for every kind of traveler.",
                          size: 15,
                          color: Colors.white54,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 25, right: 25, bottom: 30, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              text: "Toursit Places",
                              size: 18,
                            ),
                            PrimaryText(
                              text: "22",
                              size: 16,
                              color: Colors.white38,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: hotDestination.length,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                            child: hotdestinationCard(
                                context, hotDestination[index]['imagePath']!),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget hotdestinationCard(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationDetail(imagePath),
          ),
        ),
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 160,
            margin: const EdgeInsets.only(right: 20),
            //padding: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 200,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColor.secondaryColor,
                        Colors.transparent,
                      ])),
            ),
          ),
        ],
      ),
    );
  }

  Padding customAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.white70,
              )),
          RawMaterialButton(
            onPressed: null,
            elevation: 2.0,
            shape: const CircleBorder(),
            fillColor: Colors.white24,
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/info.png",
              width: 4,
            ),
          )
        ],
      ),
    );
  }
}
