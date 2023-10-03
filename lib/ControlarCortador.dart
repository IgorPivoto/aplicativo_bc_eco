import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'blueMenu.dart';
import 'homepage.dart';

class ControlarCortador extends StatefulWidget {
  const ControlarCortador({super.key});

  @override
  State<ControlarCortador> createState() => _ControlarCortador();
}

class _ControlarCortador extends State<ControlarCortador> {
  String? get address => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64EA61),
      appBar: AppBar(
        title: const Text("Controle do cortador"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(
            top: 5,
            left: 10,
            right: 10,
          ),
          children: <Widget>[
            const Text(
              "Controle seu BC-ECO",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(),
                  ),
                );
                // Ação a ser executada quando o botão for pressionado
                // Coloque a lógica que deseja aqui
                /*try {
                  BluetoothConnection connection =
                      await BluetoothConnection.toAddress(address);
                  print('Connected to the device');

                  connection.input?.listen((Uint8List data) {
                    print('Data incoming: ${ascii.decode(data)}');
                    connection.output.add(data); // Sending data

                    if (ascii.decode(data).contains('!')) {
                      connection.finish(); // Closing connection
                      print('Disconnecting by local host');
                    }
                  }).onDone(() {
                    print('Disconnected by remote request');
                  });
                } catch (exception) {
                  print('Cannot connect, exception occured');
                }*/
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Colors.blue, // Forma circular
                padding: EdgeInsets.zero, // Cor de fundo branca
              ),
              child: Center(
                child: Image.asset(
                  'assets/bluetooth.png', // Substitua pelo caminho da sua imagem
                  width: 30, // Largura da imagem
                  height: 30, // Altura da imagem
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "(pressione qualquer direção para iniciar)",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/setacima.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/setaesquerda.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/controle.png",
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/setadireita.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Image.asset(
                      "assets/setabaixo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 80),
                    backgroundColor: const Color(0xFF4DB64B),
                    //padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Text(
                    "Gravar a memória",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(250, 80),
                    backgroundColor: const Color(0xFF4DB64B),
                    //padding: const EdgeInsets.all(16.0),
                  ),
                  child: const Text(
                    "Apagar a memória",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
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
      ),
    );
  }
}

/*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    //fixedSize: const Size(84, 111),
                    padding: const EdgeInsets.all(16.0),
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Image.asset(
                    "assets/setacima.png",
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),*/  
