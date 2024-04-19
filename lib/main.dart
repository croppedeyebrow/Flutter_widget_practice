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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
          title: const Text('플러터 개발자 도전기'),
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("1번 메뉴"),
            )
          ],
        )),
        body: Container(
          color: Colors.black54,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(top: 80, left: 60)),
              Container(
                  width: 200,
                  height: 200,
                  color: Colors.purple,
                  margin: const EdgeInsets.only(top: 100, left: 100)),
              Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                  margin: const EdgeInsets.only(top: 150, left: 150))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print("버튼작동"), child: const Icon(Icons.category)));
  }
}
