import 'package:flutter/material.dart';

import 'homepage.dart';

class TutorialApp extends StatelessWidget {
  const TutorialApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64EA61),
      appBar: AppBar(
        title: const Text("TutorialApp"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      /*body: RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0), // Ajuste o espaçamento conforme necessário
                child: Image.asset(
                    'assets/controle.png'), // Substitua pelo caminho da sua imagem
              ),
            ),
            const TextSpan(
              text:
                  'Controle: Esta é a tela na qual pode-se controlar o BC-ECO. A partir do momento que qualquer seta for pressionada, o cortador irá se mover  e armazenar a sequência de movimentos em sua memória. \n\n',
              style: TextStyle(
                  fontSize:
                      16.0), // Ajuste o tamanho da fonte conforme necessário
            ),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 8.0), // Ajuste o espaçamento conforme necessário
                child: Image.asset(
                    "assets/agenda.png"), // Substitua pelo caminho da sua imagem
              ),
            ),
            const TextSpan(
              text:
                  'Agenda: Nesta tela, é possível criar uma agenda de dia da semana e horário que deseja que o BC-ECO seja ativado. Ele então realizará os movimentos em sua memória.',
              style: TextStyle(
                  fontSize:
                      16.0), // Ajuste o tamanho da fonte conforme necessário
            ),
          ],
        ),
      ),*/
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Tutorial do Aplicativo",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              //color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: const Color(0xFF4DB64B), // Cor do retângulo
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Image.asset(
                        'assets/controle.png',
                      ),
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Controle: Esta é a tela na qual pode-se controlar o BC-ECO. A partir do momento que qualquer seta for pressionada, o cortador irá se mover  e armazenar a sequência de movimentos em sua memória. \n\n',
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 8.0,
                      ),
                      child: Image.asset(
                        "assets/agenda.png",
                      ),
                    ),
                  ),
                  const TextSpan(
                    text:
                        'Agenda: Nesta tela, é possível criar uma agenda de dia da semana e horário que deseja que o BC-ECO seja ativado. Ele então realizará os movimentos em sua memória.',
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 50),
                  backgroundColor: const Color(0xFF4DB64B),
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Text(
                  "Voltar",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
