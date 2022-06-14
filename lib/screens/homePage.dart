import 'package:first_flutter_project/screens/secondScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
            tab2(context),
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
      child: Text("Copyright By Yasiru Dahanayaka",
        style: TextStyle(color: Colors.white),),
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

Widget tab2(BuildContext context){

  int count = 0;

  void increment(){
    count = count + 1;
    if (kDebugMode) {
      print(count);
    }
  }

  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You Have Pushed Button Times',
            style: TextStyle(fontSize: 18,color: Colors.blueAccent),
          ),
          Text(
            count.toString(),
            style: const TextStyle(fontSize: 28,color: Colors.blueAccent),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (_){
        //     return const SecondScreen();
        //   }
        // ));
        Navigator.of(context).pushNamed("/second");
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
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
      color: Colors.lightBlue,
      child: const Text(
        'Flutter Testing App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontFamily: 'Ubuntu sans-serif',
        ),
      ),
    ),
  );
}