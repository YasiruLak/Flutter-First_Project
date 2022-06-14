import 'package:first_flutter_project/screens/homePage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Navigation',
        ),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context,const MyHomePage());
          },
         )
        ),
        backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text('Flutter Navigation',
              style: TextStyle(fontSize: 18,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
