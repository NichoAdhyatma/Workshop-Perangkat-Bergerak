import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:praktikum_3/models/highlight_items.dart';
import 'package:praktikum_3/models/tourism_place.dart';
import 'package:praktikum_3/screens/detail_screen.dart';
import 'package:praktikum_3/widgets/app_bar.dart';
import 'package:praktikum_3/widgets/bottom_nav_bar.dart';
import 'package:praktikum_3/widgets/highlight_title.dart';
import 'package:praktikum_3/widgets/list_item.dart';
import 'package:praktikum_3/widgets/search_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double sigmaX = 0.0; // from 0-10
    double sigmaY = 0.0; // from 0-10
    double opacity = 0.25; // from 0-1.0

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar
              myAppbar(),
              mySearchBar(),
              highlightTitle("Recommended"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      ...highLight_items.map(
                        (place) => Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, bottom: 20),
                          child: Container(
                            width: 300,
                            height: 200,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage(place.imageAsset),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                  sigmaX: sigmaX, sigmaY: sigmaY),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(opacity),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        place.name,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        place.location,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: place.rating,
                                            itemBuilder: (context, index) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemCount: 5,
                                            itemSize: 20.0,
                                            direction: Axis.horizontal,
                                          ),
                                          Text(
                                            "${place.rating}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              highlightTitle(
                "Place in Surabaya",
              ),

              ...tourismPlaceList.map(
                (place) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            place: place,
                          ),
                        ),
                      );
                    },
                    child: listItem(place),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
