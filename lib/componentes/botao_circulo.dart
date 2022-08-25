import 'package:flutter/material.dart';

class BotaoCirculo extends StatelessWidget {
  const BotaoCirculo(
      {Key? key,
      required this.icone,
      required this.iconeTamanho,
      required this.onPressed})
      : super(key: key);

  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      margin: const EdgeInsets.all(6),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: iconeTamanho,
        color: Colors.black,
      ),
    );
  }
}
