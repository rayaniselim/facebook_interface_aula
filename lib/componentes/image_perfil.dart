import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImagePerfil extends StatelessWidget {
  final String urlImage;
  final bool foiVizualizado;
  const ImagePerfil({
    Key? key,
    required this.urlImage,
    this.foiVizualizado = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: CachedNetworkImageProvider(urlImage),
      backgroundColor: Colors.grey[200],
    );
  }
}
