import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
    MyApp()
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: View()
        )
    );
  }

}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State{

  Color colorCode = Colors.cyan;

  final Random random = Random();

  generateRandomColor(){

    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => generateRandomColor(),
        child:  Scaffold(
            backgroundColor: colorCode,
            appBar: AppBar(title: Text('Tap to change color')),
            body: Center(
                child: Container(
                    child: Text('Hey there'))
            )
        ),
    );
  }
}