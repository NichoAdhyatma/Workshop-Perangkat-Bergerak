import 'package:flutter/material.dart';

Widget bottomNavbar() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 20,
      right: 20,
      bottom: 20,
    ),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.lightBlueAccent,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        clipBehavior: Clip.hardEdge,
        child: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(
            color: Colors.blue,
          ),
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
      ),
    ),
  );
}
