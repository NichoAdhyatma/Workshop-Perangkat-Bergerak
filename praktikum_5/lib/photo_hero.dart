import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {super.key,
      required this.photo,
      required this.onTap,
      required this.width});

  final String photo;
  final VoidCallback onTap;
  final double width;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      
    );
  }
}
