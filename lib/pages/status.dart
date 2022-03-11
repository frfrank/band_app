import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:band_names/services/socket_services.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SERVER STATUS : ${socketService.serverStatus}',
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: (){
          print("Ha sido presionado");
          socketService.socket.emit('emitir-mensaje', {'name':"Francisco", 'message': "Hola Wily"});
        },

      ),
    );
  }
}
