import 'package:first_flutter_project/screens/homePage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

    String text;

    SecondScreen(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Flutter Navigation',
        ),
        leading: IconButton(
          icon:  Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context, MyHomePage());
          },
         )
        ),
        backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text,
              style: TextStyle(fontSize: 18,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
