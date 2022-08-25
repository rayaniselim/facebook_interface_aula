import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface_aula/models/models.dart';
import 'package:flutter/material.dart';

class AreaCriarPostagem extends StatelessWidget {
  final User user;

  const AreaCriarPostagem({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
                backgroundImage: CachedNetworkImageProvider(user.urlImage),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'No que você está pensando'),
                ), // caixa de texto
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5, //espesura da borda
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: const Text(
                    'Ao vivo',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: const Text(
                    'Foto',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_call,
                    color: Colors.purple,
                  ),
                  label: const Text(
                    'Sala',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
