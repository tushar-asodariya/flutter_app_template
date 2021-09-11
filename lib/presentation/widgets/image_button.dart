import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    this.imageFile,
    this.imageUrl,
  }) : super(key: key);

  final File? imageFile;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(8),
      ),
      child: () {
        if (imageUrl != null) {
          return CachedNetworkImage(imageUrl: imageUrl!);
        }
        if (imageFile != null) {
          return Image.file(imageFile!);
        }
        return const Icon(
          Icons.camera_alt,
          color: Colors.white,
        );
      }(),
    );
  }
}