import 'package:flutter/material.dart';

Widget latihanWidget(int counter, String latihan) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "$counter",
        style: const TextStyle(fontSize: 16),
      ),
      const SizedBox(
        height: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            latihan,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ],
  );
}
