import 'package:flutter/material.dart';

Widget percobaanWidget(int counter, String genap, String ganjil) {
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
            ganjil,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Text(
            genap,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ],
  );
}
