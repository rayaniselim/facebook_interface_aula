import 'models.dart';

class Story {
  User user;
  String urlImage;
  bool foiVizualisado;

  Story({
    required this.user,
    required this.urlImage,
    this.foiVizualisado = false,
    required bool foiVisualizado,
  });
}
