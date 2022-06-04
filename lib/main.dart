import 'dart:html';

import 'package:flutter/material.dart';


void main(){
  runApp(MyAppTwo());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Text("Hello Yasiru"),
    );
  }

}

class MyAppTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        body: const Center(
          child: Text("Copyright by Yasiru Dahanayaka",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }

}