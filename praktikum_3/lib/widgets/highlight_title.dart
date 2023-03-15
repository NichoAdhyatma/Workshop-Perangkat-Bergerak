import 'package:flutter/material.dart';

Widget highlightTitle(String title) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        const Icon(
          Icons.more_horiz,
          color: Colors.grey,
        ),
      ],
    ),
  );
}
