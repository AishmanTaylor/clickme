import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _total = 0;

  void _deincrementCounter() {
    setState(() {
      _total--;
    });
  }

  void _incrementCounter() {
    setState(() {
      _total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Running Total',
            ),
            Text(
              'Total: $_total times!',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                onPressed: _deincrementCounter,
                child: const Text("Decincriment!")),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text("Inciment!")),
          ],
        ),
      ),
    );
  }
}
