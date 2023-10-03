import 'package:flutter/material.dart';
import 'package:flutter_app_bc_eco/servico/autenticacao_servico.dart';
import 'ControlarCortador.dart';
import 'agenda.dart';
import 'tutorialApp.dart';
import 'tutorialBc.dart';
import 'login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double tamanhoBotaoy = 120.0;
    double tamanhoBotaox = 140.0;

    return Scaffold(
      backgroundColor: const Color(0xFF64EA61),
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 128,
              height: 128,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/usuariofotopadrao.png",
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                    ],
                  ),
                  /*child: const Text(
                    "Colocar imagem de perfil",
                    style: TextStyle(fontSize: 16),
                  ),*/
                ),
              ],
            ),
            const SizedBox(height: 16), // Espaço entre a imagem e o retângulo
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF4DB64B), // Cor do retângulo
              child: const Text(
                'Bem-vindo “USUARIO”, o que pretende fazer hoje?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ControlarCortador(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(tamanhoBotaoy, tamanhoBotaox),
                    backgroundColor: const Color(0xFF4DB64B),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/controle.png",
                        alignment: Alignment.center,
                      ),

                      const SizedBox(
                        height: 0,
                      ), // Espaço entre a imagem e o texto
                      const Text(
                        'Controlar o BC-ECO',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Agenda(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(tamanhoBotaoy, tamanhoBotaox),
                    backgroundColor: const Color(0xFF4DB64B),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/agenda.png",
                        alignment: Alignment.center,
                      ),

                      const SizedBox(
                        height: 0,
                      ), // Espaço entre a imagem e o texto
                      const Text(
                        'Agenda',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TutorialBc(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(tamanhoBotaoy, tamanhoBotaox),
                    backgroundColor: const Color(0xFF4DB64B),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/tutorialbc.png",
                        alignment: Alignment.center,
                      ),

                      const SizedBox(
                        height: 0,
                      ), // Espaço entre a imagem e o texto
                      const Text(
                        'Dicas sobre BC-ECO',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 60),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TutorialApp(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(tamanhoBotaoy, tamanhoBotaox),
                    backgroundColor: const Color(0xFF4DB64B),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/tutorialapp.png",
                        alignment: Alignment.center,
                      ),

                      const SizedBox(
                        height: 0,
                      ), // Espaço entre a imagem e o texto
                      const Text(
                        'Como utilizar o app',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    AutenticacaoServico().desLogar().then(
                      (_) {
                        // Após o logout, navegue para a tela de login
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                          (Route<dynamic> route) => false,
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 120),
                    backgroundColor: const Color(0xFF4DB64B),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/sair.png"),
                      const SizedBox(
                        height: 3,
                      ), // Espaço entre a imagem e o texto
                      const Text(
                        'SAIR DA CONTA',
                        style: TextStyle(fontSize: 15.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /*Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para o segundo botão
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(60, 80),
                    backgroundColor: const Color(0xFF4DB64B),
                  ),
                  child: Image.asset("assets/sair.png"),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
