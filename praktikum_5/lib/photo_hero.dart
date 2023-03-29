import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {super.key,
      required this.photo,
      required this.onTap,
      required this.width,
      required this.tag});

  final String photo;
  final String tag;
  final VoidCallback onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: tag,
        child: Material(
          clipBehavior: Clip.hardEdge,
          color: Theme.of(context).primaryColor.withOpacity(0.25),
          child: InkWell(
            
            onTap: onTap,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: photo,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}

