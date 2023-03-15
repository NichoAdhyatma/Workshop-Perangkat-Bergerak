import 'package:flutter/material.dart';

Widget myAppbar() {
  return Padding(
    padding:
        const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://api.multiavatar.com/Starcrasher.png"),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Nicholaus",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.15,
                  ),
                ),
              ],
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ))
      ],
    ),
  );
}
