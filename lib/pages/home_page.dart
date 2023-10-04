import 'package:flutter/material.dart';
import 'package:pae_encontro5/pages/second_page.dart';
import 'package:http/http.dart' as http;
import '../widgets/botao_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          BotaoWidget(
            texto: 'PEGAR POKEMON',
            funcao: () async {
              var url = 'https://pokeapi.co/api/v2/pokemon/2';
              var respostaAPI = await http.get(Uri.parse(url));
              print(respostaAPI.body);
            },
          ),
          BotaoWidget(
            texto: 'Mudar de Página >',
            funcao: () {
              // Empilha a página
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
