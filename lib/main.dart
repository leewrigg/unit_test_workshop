import 'package:flutter/material.dart';
import 'package:unit_test_workshop/counter.dart';
import 'package:unit_test_workshop/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Test Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Dependency Injection'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Counter counter = Counter();

  void _incrementCounter() {
    setState(() {
      counter.increment();
    });
  }

  void _decrementCounter() {
    setState(() {
      counter.decrement();
    });
  }

  void _randomCounter() {
    setState(() {
      counter.random();
    });
  }

  void _resetCounter() {
    setState(() {
      counter.reset();
    });
  }

  void _temperatureCounter() async {
    await counter.weather();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${counter.value}',
                style: const TextStyle(fontSize: 80),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: _randomCounter,
                    backgroundColor: Colors.black,
                    child: const Icon(Icons.question_mark_rounded),
                  ),
                  Row(
                    children: [
                      FloatingActionButton(
                        onPressed: _decrementCounter,
                        child: const Icon(Icons.exposure_minus_1),
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: _incrementCounter,
                        child: const Icon(Icons.plus_one),
                      ),
                    ],
                  ),
                  FloatingActionButton(
                    onPressed: _temperatureCounter,
                    backgroundColor: Colors.red,
                    child: const Icon(Icons.sunny),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 64, bottom: 128),
                child: Text(
                    "Counter pressed for the ${Utils.intWithSuffix(counter.valueChangedCount)} time"),
              ),
              ElevatedButton(
                onPressed: _resetCounter,
                child: Text("Reset counter"),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
