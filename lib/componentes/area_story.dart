import 'package:facebook_interface_aula/data/dados.dart';
import 'package:facebook_interface_aula/componentes/card_story.dart';
import 'package:facebook_interface_aula/models/models.dart';
import 'package:flutter/material.dart';

class AreaStory extends StatelessWidget {
  final User user;
  final List<Story> storys;
  const AreaStory({
    Key? key,
    required this.user,
    required this.storys,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + storys.length,
        itemBuilder: (context, indice) {
          if (indice == 0) {
            Story storyUser = Story(
              user: userAtual,
              urlImage: userAtual.urlImage,
              foiVisualizado: true,
            );
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: CardStory(
                adicionarStory: true,
                story: storyUser,
              ),
            );
          }

          Story story = storys[indice - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: CardStory(
              story: story,
            ),
          );
        },
      ),
    );
  }
}
