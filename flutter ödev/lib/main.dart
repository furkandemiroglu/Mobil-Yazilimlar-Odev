import 'package:flutter/material.dart';

void main() {
  var mainAxisSize;
  var icon;
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: const Text('FURKAN UYGULAMA'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  const FlutterLogo(
                    size: 80,
                  ),
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    height: 80,
                    width: 331,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'F1',
                        style: TextStyle(fontSize: 50, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const Image(
                image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/2022_Emilia_Romagna_GP_-_Mercedes-AMG_F1_W13_E_Performance_of_Lewis_Hamilton.jpg/2560px-2022_Emilia_Romagna_GP_-_Mercedes-AMG_F1_W13_E_Performance_of_Lewis_Hamilton.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.send_sharp,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  Icon(
                    Icons.bookmark_outline,
                    color: Colors.black,
                    size: 36.0,
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: const Text("Buton"),
              ),
              const Placeholder(
                color: Colors.grey,
                fallbackHeight: 100,
                fallbackWidth: 200,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
