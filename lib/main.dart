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
  //gridView.builder를 위한 데이터 셋
  final postGrid = [
    {"number": "1", "color": Colors.tealAccent},
    {"number": "2", "color": Colors.yellowAccent},
    {"number": "3", "color": Colors.amberAccent},
    {"number": "4", "color": Colors.deepOrangeAccent},
    {"number": "5", "color": Colors.blue},
    {"number": "6", "color": Colors.black87},
    {"number": "7", "color": Colors.blueAccent},
    {"number": "8", "color": Colors.blueAccent},
    {"number": "9", "color": Colors.cyanAccent},
    {"number": "10", "color": Colors.black12},
    {"number": "11", "color": Colors.greenAccent},
    {"number": "12", "color": Colors.indigoAccent},
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
      body: GridView.builder(
          // 그리드 뷰를 생성합니다.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              // 그리드의 가로 방향에 표시될 항목의 수를 설정합니다.
              crossAxisCount: 2,
              // 가로 방향의 항목들 사이의 간격을 설정합니다.
              crossAxisSpacing: 14,
              // 세로 방향의 항목들 사이의 간격을 설정합니다.
              mainAxisSpacing: 16),
          // 그리드 뷰의 총 아이템 수를 설정합니다.
          itemCount: postGrid.length,
          // 각 아이템을 생성하기 위한 빌더 함수를 설정합니다.
          itemBuilder: (context, index) {
            // postContainer 위젯을 반환합니다. 이 위젯은 그리드의 각 항목을 표시합니다.
            return postContainer(
                // 현재 인덱스에 해당하는 번호를 postContainer에 전달합니다.
                number: postGrid[index]["number"] as String,
                // 현재 인덱스에 해당하는 색상을 postContainer에 전달합니다.
                colorData: postGrid[index]["color"] as Color);
          }),
    );
  }

  Widget postContainer(
      {String number = "0", Color colorData = Colors.tealAccent})
  //매개변수를 만들어주고, 기본값을 설정해준다.
  {
    return Container(
      width: 150,
      height: 150,
      color: colorData,
      child: Center(child: Text("그리드 박스 $number")),
    );
  }
}
