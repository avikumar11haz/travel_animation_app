import 'package:flutter/material.dart';
import 'package:travel_app_ui/colors.dart';
import 'package:travel_app_ui/constant.dart';
import 'package:travel_app_ui/style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.darkSecondaryColor,
              AppColor.lightTertiaryColor,
            ],
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.home,
                color: Colors.white38,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.place,
                color: AppColor.primaryColor,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.person,
                color: Colors.white38,
                size: 40,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
          children: [
            customAppBar(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destination.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: destinationCard(
                      context, destination[index]['imagePath']!),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 25, right: 25, bottom: 30, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: "Hot Destination",
                    size: 24,
                  ),
                  PrimaryText(
                    text: "More",
                    size: 16,
                    color: Colors.white38,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotDestination.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: hotdestinationCard(
                    context,
                    hotDestination[index]['imagePath']!,
                    hotDestination[index]['placeName']!,
                    hotDestination[index]['placeCount']!,
                  ),
                ),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 25, right: 25, bottom: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: "Visitor Reviews",
                    size: 18,
                  ),
                  PrimaryText(
                    text: "22 Review",
                    size: 16,
                    color: Colors.white38,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 30, top: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: const DecorationImage(
                          image: AssetImage('assets/man.jpeg'),
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryText(
                              text: "Parteek kumar",
                              size: 14,
                            ),
                            PrimaryText(
                              text: 'Jan 28',
                              size: 12,
                              color: Colors.white38,
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        PrimaryText(
                          text: 'Discover the pulsating neon energy of Tokyo,'
                              ' where cutting-edge technology seamlessly blends with centuries-old traditions,'
                              ' offering endless delights for every kind of traveler.',
                          size: 14,
                          color: Colors.white38,
                        ),
                      ],
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

  Stack destinationCard(BuildContext context, String imagePath) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width - 60,
          margin: const EdgeInsets.only(right: 20),
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
            width: MediaQuery.of(context).size.width - 60,
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
    );
  }

  Stack hotdestinationCard(BuildContext context, String imagePath,
      String placeName, String placeCount) {
    return Stack(
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
        Positioned(
            bottom: 25,
            left: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: placeName,
                  size: 14,
                ),
                const SizedBox(
                  height: 5,
                ),
                PrimaryText(
                  text: placeCount,
                  size: 10,
                  color: Colors.white54,
                )
              ],
            ))
      ],
    );
  }

  Padding customAppBar() {
    return const Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 50, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(
            text: "Destination",
            size: 32,
            fontWeight: FontWeight.w700,
          ),
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
    );
  }
}
