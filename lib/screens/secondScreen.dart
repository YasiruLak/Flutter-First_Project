import 'package:first_flutter_project/screens/homePage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

    String text;

    SecondScreen(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Flutter Navigation',
        ),
        leading: IconButton(
          icon:  const Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context, const MyHomePage());
          },
         )
        ),
        backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text,
              style: const TextStyle(fontSize: 18,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
