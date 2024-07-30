import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  runApp(const MyApp());
}

final log = Logger('Example');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Handle Change Text',
      home: ChangeText(),
    );
  }
}

class ChangeText extends StatelessWidget {
  const ChangeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Handle Change Text'),
      ),
      body: TextField(
        onChanged: (text) {
          print('First text field: $text (${text.characters.length})');
        },
      ),
    );
  }
}
