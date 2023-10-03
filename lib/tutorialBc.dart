import 'package:flutter/material.dart';
import 'package:flutter_app_bc_eco/homepage.dart';

class TutorialBc extends StatelessWidget {
  const TutorialBc({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64EA61),
      appBar: AppBar(
        title: const Text("TutorialBc"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Como usar seu BC-ECO?",
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
            child: const Text(
              "BC-ECO (Bom de Corte Ecológico) é um cortador de grama autônomo que é capaz de reproduzir os comandos informados por você, a partir deste aplicativo.\n\n É carregado por um painel solar de 12V/2.7A, que alimenta uma bateria de 12V/1.5A, para evitar o consumo de combustíveis.\n\n BC-ECO também possui sensores de colisão, para evitar chocar-se com obstáculos.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
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
