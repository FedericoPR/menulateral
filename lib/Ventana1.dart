import 'package:flutter/material.dart';

class Ventana1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ventana1'),
        ),
        body: Center(
            child: Text('Estamos en la primera ventana.')
        )
    );
  }
}
