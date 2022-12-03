import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/componentes/image_perfil.dart';
import 'package:facebook_interface_aula/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CardStory extends StatelessWidget {
  final Story story;
  final bool adicionarStory;

  const CardStory({
    Key? key,
    required this.story,
    this.adicionarStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// arredondar bordas em uma imagem
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity, //ocupar sempre a altura total
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: PaletaCores.gradientStory,
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: adicionarStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.add),
                    iconSize: 30,
                    color: PaletaCores.azulFacebook,
                    onPressed: () {},
                  ))
              : ImagePerfil(
                  urlImage: story.user.urlImage,
                  foiVizualizado: story.foiVizualisado,
                ),
        ),
      ],
    );
  }
}
