/*import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothDeviceScreen extends StatefulWidget {
  @override
  _BluetoothDeviceScreenState createState() => _BluetoothDeviceScreenState();
}

class _BluetoothDeviceScreenState extends State<BluetoothDeviceScreen> {
  List<BluetoothDevice> devicesList = [];

  @override
  void initState() {
    super.initState();
    _getPairedDevices();
  }

  Future<void> _getPairedDevices() async {
    List<BluetoothDevice> devices = [];
    try {
      devices = await FlutterBluetoothSerial.instance.getBondedDevices();
    } catch (ex) {
      print("Error getting paired devices: $ex");
    }
    setState(() {
      devicesList = devices;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Devices'),
      ),
      body: ListView.builder(
        itemCount: devicesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${devicesList[index].name}"),
            subtitle: Text(devicesList[index].address),
            onTap: () async {
              // Implementar a lógica de conexão com o dispositivo selecionado
              await _connectToDevice(devicesList[index]);
            },
          );
        },
      ),
    );
  }

  Future<void> _connectToDevice(BluetoothDevice device) async {
    try {
      BluetoothConnection connection =
          await BluetoothConnection.toAddress(device.address);
      print('Connected to ${device.name}');
      // Agora você tem a conexão e pode enviar/receber dados
    } catch (ex) {
      print('Cannot connect, exception occurred: $ex');
    }
  }
}
*/