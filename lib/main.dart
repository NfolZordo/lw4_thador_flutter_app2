import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабараторна робота 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StringProcessingHomePage(title: 'Обробка ярдка'),
    );
  }
}

class StringProcessingHomePage extends StatefulWidget {
  const StringProcessingHomePage({super.key, required this.title});

  final String title;

  @override
  State<StringProcessingHomePage> createState() => _StringProcessingHomePageState();
}
class _StringProcessingHomePageState extends State<StringProcessingHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  String inputText = "";
  final content = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(top: 16,right: 4,bottom: 8,left: 4),
                child: Text(
                  'Замінити всі букви "а" рядка на букви "о"',
                  style: TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.center,
              ),
            ),
      Padding(
        padding: EdgeInsets.only(top: 5,right: 8,bottom: 8,left: 8),
          child: TextField(
            controller: content,

            decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Введіть рядок',
                ),
              ),
        ),
            TextButton(
              onPressed: () {setState((){
                inputText = content.text;
                inputText = inputText.replaceAll('A', 'O');
                inputText = inputText.replaceAll('a', 'o');
              });
                },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue,
              ),
              child: const Text('Обробити',
                style: TextStyle(fontSize: 22.0),
              ),
            ),
            Text(
              inputText,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
