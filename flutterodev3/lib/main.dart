import 'package:flutter/material.dart';
import 'package:odev3/Listview.dart';

void main() {
  runApp(const Anasayfa());
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

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
        primarySwatch: Colors.green,
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
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'ARA',
            onPressed: () {},
          ),
        ],
        title: const Center(
          child: Text("LISTTILE"),
        ),
        leading: IconButton(
          icon: const Icon(Icons.call),
          tooltip: 'ARA',
          onPressed: () {},
        ),
      ),
      body: Center(
        child:Column(children:[
          Column(children: [

            ElevatedButton(onPressed: () {var push = Navigator.push(context,MaterialPageRoute(builder: (context)=>Sayfa(),),);},
              child:const Text("Yeni Sayfaya Geç"),),
          ],),
          Column(
            children: [
              Container(
                color: Colors.deepPurple,
                child: const ListTile(
                  selectedColor: Colors.teal,
                  hoverColor: Colors.blue,
                  title: Text("ListTile 1"),
                ),
              ),
              Container(
                color: Colors.deepOrange,
                child: const ListTile(
                  selectedColor: Colors.transparent,
                  hoverColor: Colors.blue,
                  title: Text("ListTile 2"),
                ),
              ),
            ],
          ),
        ],
        ),
      ),


    );
  }
}
