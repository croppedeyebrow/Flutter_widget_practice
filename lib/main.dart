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
      body: Container(
          child: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.redAccent),
              onPressed: () => print("엘리베이티드 버튼 클릭"),
              child: const Text('플러터 엘리베이티드 버튼'),
            ),
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: Colors.blueAccent),
              onPressed: () => print("텍스트 버튼 클릭"),
              child: const Text('플러터 텍스트 버튼'),
            ),
          ),
          Center(
            child: OutlinedButton(
              onPressed: () => print("아웃라인 버튼 클릭"),
              child: const Text('플러터 아웃라인드 버튼'),
            ),
          ),
        ],
      )),
    );
  }
}
