import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.place,
      required this.isDone,
      required this.onCheckboxClick});

  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.blue : Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(
                        place.imageAsset,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isDone ? Colors.white : Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.location,
                    style: TextStyle(
                      fontSize: 14,
                      color: isDone ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Checkbox(
            value: isDone,
            onChanged: onCheckboxClick,
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }
}
