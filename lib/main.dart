import 'package:flutter/material.dart';
import 'package:flutter_practice_01/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('플러터 개발자 도전기',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SecondView(),
            )),
        child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.deepPurple,
          child: const Text("시작"),
        ),
      )),
    );
  }
}
