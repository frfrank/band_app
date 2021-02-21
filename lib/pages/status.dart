import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:band_names/services/socket_services.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);
    print(socketService);
    return Scaffold(
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
