import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';
import 'package:praktikum_3/widgets/app_bar.dart';
import 'package:praktikum_3/widgets/bottom_nav_bar.dart';
import 'package:praktikum_3/widgets/highlight_card.dart';
import 'package:praktikum_3/widgets/highlight_title.dart';
import 'package:praktikum_3/widgets/search_bar.dart';
import 'package:praktikum_3/screens/tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appbar
              const MyAppBar(),
              //searchBar
              mySearchBar(),
              //title
              highlightTitle("Recommended"),
              //Highligh card
              const HighLightCard(),
              //title
              highlightTitle(
                "Place in Surabaya",
              ),
              //tourism list
              const TourismList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
