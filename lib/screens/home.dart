import 'package:facebook_interface_aula/componentes/botao_circulo.dart';
import 'package:facebook_interface_aula/data/dados.dart';
import 'package:facebook_interface_aula/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../componentes/area_criar_postagem.dart';
import '../componentes/area_story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            //expandedHeight: 250,
            floating:
                true, // rolagem da tela de cima pra baixo, barra flutuante,
            centerTitle: false,
            title: const Text(
              'facebook',
              style: TextStyle(
                color: PaletaCores.azulFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              BotaoCirculo(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              BotaoCirculo(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: AreaCriarPostagem(
              user: userAtual,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: AreaStory(
                user: userAtual,
                storys: storys,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.pink,
              height: 1000,
            ),
          )
        ],
      ),
    );
  }
}
