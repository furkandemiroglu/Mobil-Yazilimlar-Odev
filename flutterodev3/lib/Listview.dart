import 'package:flutter/material.dart';

void main() {
  runApp(const Sayfa());
}

class Sayfa extends StatelessWidget {
  const Sayfa({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(appBar: AppBar(
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          tooltip: 'ARA',
          onPressed: () {},
        ),
      ],
      title: const Center(
        child: Text("LISTVIEW"),
      ),
      leading: IconButton(
        icon: const Icon(Icons.call),
        tooltip: 'ARA',
        onPressed: () {},
      ),
    ),
      body: Center(
        child: ListView(
          children: const [
            ListTile(

              tileColor: Colors.deepPurple,
              title: Text("Tile1"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile2"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile3"),

            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile4"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile5"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile6"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile7"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile8"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile9"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile10"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile11"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile12"),
            ),
            ListTile(
              tileColor: Colors.deepPurple,
              title: Text("Tile13"),
            ),
            ListTile(
              tileColor: Colors.lightGreenAccent,
              title: Text("Tile14"),
            ),

          ],
        ),
      ),
    );
  }
}
