import 'package:flutter/material.dart';
import 'package:odev/sayfa.dart';

void main() => runApp(const Anasayfa());

class Anasayfa extends StatelessWidget {
  const Anasayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sayfa()));
              },
            ),
          ],
          title: Text('Anasayfa'),
        ),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              AutocompleteBasicExample(
                child: Align(
                  alignment: Alignment.topRight,
                  child: AspectRatio(aspectRatio: 4 / 3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({super.key, required child});

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
    'furkan',
    'efe',
    'kimsesiz',
    'muharrem',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
