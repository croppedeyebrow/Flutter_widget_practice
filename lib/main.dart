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
        backgroundColor: Colors.deepPurple,
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
      body: ListView(
        children: [
          const Text('배우 : 노윤서'),
          SizedBox(
              child: Image(
                image: NetworkImage(
                    'https://cdnweb01.wikitree.co.kr/webdata/editor/202302/07/img_20230207172645_f26c1023.webp'),
              ),
              fit: BoxFit.cover,
              height: 300,
              width: MediaQuery.of(context).size.width),
        ],
      ),
    );
  }
}
