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
  final postList = [
    {
      "title": "리스트 블럭 1번",
      "color": Colors.yellowAccent,
    },
    {
      "title": "리스트 블럭 2번",
      "color": Colors.greenAccent,
    },
    {
      "title": "리스트 블럭 3번",
      "color": Colors.purpleAccent,
    },
    {
      "title": "리스트 블럭 4번",
      "color": Colors.deepOrange,
    },
    {
      "title": "리스트 블럭 5번",
      "color": Colors.blueAccent,
    },
    {
      "title": "리스트 블럭 6번",
      "color": Colors.cyanAccent,
    }
  ];

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
        body: ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return postContainer(
                title: postList[index]["title"] as String,
                colorData: postList[index]["color"] as Color,
              );
            }),
        floatingActionButton: FloatingActionButton(
            onPressed: () => print("버튼작동"), child: const Icon(Icons.category)));
  }

  Widget postContainer(
      {String title = " ", Color colorData = Colors.yellowAccent}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width,
          width: 180,
          height: 100,
          color: colorData,
        ),
      ],
    );
  }
}
