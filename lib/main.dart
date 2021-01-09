import 'package:flutter/material.dart';
import 'package:menulateral/Ventana1.dart';
import 'package:menulateral/Ventana2.dart';


void main(){
  runApp(MyApp());}

// UI -----------------------------------------
class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() {
    print("Constructor MyApp");
    return new MyAppState();//el estado ---> otra clase
  }
}

class MyAppState extends State<MyApp> {

  String mostrar="UNO";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.orange
                ),

                child: Text(
                    "HEADER"
                ),
              ),
              //-----------------------
              FlatButton(
                onPressed: ()=> setState(() {mostrar="UNO";}),
                child: Text("Ventana 1"),
              ),
              // 3 -----------------------
              FlatButton(
                onPressed: ()=> setState(() {mostrar="DOS";}),
                child: Text("Ventana 2"),
              )

            ],
          )

      ),
        body: Center(
          child: ListView(
            children: [
              if(mostrar=="UNO") Ventana1(),
              if(mostrar=="DOS") Ventana2(),//Text('Hola mundo')
            ],
          )
        ),
      ),
    );
  }


}
