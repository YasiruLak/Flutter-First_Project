
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      )
  );
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Text("Hello Yasiru"),
//     );
//   }
//
// }

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      home: const MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter"),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ],
          flexibleSpace: Image.asset(
            "assets/main2.jpg",
            fit: BoxFit.cover,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),
                text: "Car",
              ),
              Tab(icon: Icon(Icons.directions_transit),
              text: "Bus",
              ),
              Tab(icon: Icon(Icons.directions_bike),
              text: "Bicycle",
              ),
              Tab(icon: Icon(Icons.help_center),
                text: "Help",
              ),
            ],
          ),
          elevation: 20.0,
          // backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: [
            tab1(),
            tab2(),
            tab3(),
            tab4(),
          ],
        ),
      ),
    );
  }

}

Widget tab1(){
  return Container(

    color: Colors.lightBlue,
    child: const Center(
      child: Text("Copyright By Yasiru Dahanayaka"),
    ),
  );
}

Widget tab4(){
  return Container(

    decoration: const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
          image: AssetImage("assets/main.jpg"),
          fit: BoxFit.fitWidth),
    ),
    child: const Center(

    ),
  );
}

Widget tab2(){
  return Scaffold(
    body: Container(

      color: Colors.blue,
      height: 250,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          Text('Testing One',
            style: TextStyle(fontSize: 18),
          ),
          Text('Testing Two',
            style: TextStyle(fontSize: 18),
          ),
          Text('Testing Three',
            style: TextStyle(fontSize: 18),
          ),

        ],
      ),
    ),
  );
}

Widget tab3(){
  return Scaffold(
    body: Container(
      // padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      height: 65,
      alignment: Alignment.center,
      color: Colors.black54,
      child: const Text(
        'Flutter Testing App',
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'Ubuntu sans-serif',
        ),
      ),
    ),
  );
}