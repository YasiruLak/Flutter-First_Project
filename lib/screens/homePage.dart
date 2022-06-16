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
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Image.asset(
            "assets/main2.jpg",
            fit: BoxFit.cover,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.directions_car),
                text: "Car",
              ),
              Tab(
                icon: Icon(Icons.directions_transit),
                text: "Bus",
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
                text: "Bicycle",
              ),
              Tab(
                icon: Icon(Icons.help_center),
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

Widget tab1() {
  return Container(
    color: Colors.lightBlue,
    child: const Center(
      child: Text(
        "Copyright By Yasiru Dahanayaka",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget tab2(BuildContext context) {
  int count = 0;

  void increment() {
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
          const Text(
            'You Have Pushed Button Times',
            style: TextStyle(fontSize: 18, color: Colors.blueAccent),
          ),
          Text(
            count.toString(),
            style: const TextStyle(fontSize: 28, color: Colors.blueAccent),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return SecondScreen("CCSL");
        }));
        // Navigator.of(context).pushNamed("/second");
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
  );
}

Widget tab3() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
          image: AssetImage("assets/main.jpg"), fit: BoxFit.fitWidth),
    ),
    child: const Center(),
  );
}

Widget tab4() {
  return Scaffold(
    body: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          leading:  Icon(Icons.brightness_auto),
          title:  Text("Brightness Auto"),
          subtitle:  Text("Change the Brightness"),
          trailing:  Icon(Icons.menu),
          onTap: () {},
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.image),
          title: Text("Change Image"),
          subtitle: Text("Change the Image"),
          trailing: Icon(Icons.menu),
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.keyboard),
          title: Text("Keyboard Layout"),
          subtitle: Text("Change the Keyboard Layout"),
          trailing: Icon(Icons.menu),
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text("Ring Option"),
          subtitle: Text("Change the Ring Option"),
          trailing: Icon(Icons.menu),
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.build),
          title: Text("Settings"),
          subtitle: Text("Change Settings"),
          trailing: Icon(Icons.menu),
        ),
         ListTile(
          leading: Icon(Icons.nature_people),
          title: Text("Near"),
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.backup),
          title: Text("Backups"),
        ),
      ],
    ),
  );
}
