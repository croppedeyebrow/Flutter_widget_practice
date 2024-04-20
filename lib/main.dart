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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //상단 부분 스크롤 박스
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "상단 부분01",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.deepPurple,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "상단 부분02",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              ),
            ),

            //중간 구분 지역
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Container(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "중간 구분 지역",
                      style: TextStyle(fontSize: 28, color: Colors.white),
                    ),
                  ),
                )),

            //밑에 부분 스크롤 박스
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          "하단 부분 01",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.yellowAccent,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "하단 부분 02",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
