import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';
import 'package:praktikum_3/screens/detail_screen.dart';
import 'package:praktikum_3/widgets/list_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Bandung"),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
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
          );
        },
      ),
    );
  }
}
