import 'package:flutter/material.dart';

class Ventana2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ventana 2'),
        ),
        body: Center(
            child: Text('Esto es la ventana2.')
        )
    );
  }
}
