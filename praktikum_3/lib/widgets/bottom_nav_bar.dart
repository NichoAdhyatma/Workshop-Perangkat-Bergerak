import 'package:flutter/material.dart';

Widget bottomNavbar() {
  return Container(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 20,
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Destination",
          icon: Icon(
            Icons.location_city_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: "Map",
          icon: Icon(
            Icons.map_outlined,
          ),
        ),
      ],
    ),
  );
}
