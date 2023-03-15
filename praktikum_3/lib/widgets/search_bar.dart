import 'package:flutter/material.dart';

Widget mySearchBar() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10.0),
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Search Destination",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue[400],
          ),
          child: const Icon(
            Icons.settings_accessibility,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
