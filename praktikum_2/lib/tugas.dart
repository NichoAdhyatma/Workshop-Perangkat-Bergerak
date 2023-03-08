import 'package:flutter/material.dart';

Widget tugasWidget(int counter, String tugas) {
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
            tugas,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ],
  );
}
