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
        body: Container(
            // 화면을 감싸는 컨테이너
            child: Center(
                // 화면을 가운데 정렬하는 위젯
                child: TextButton(
          // 텍스트 버튼 위젯
          onPressed: () {
            // 버튼이 눌렸을 때 동작하는 함수
            // 눌렀을 때 동작
            showDialog(
                // 다이얼로그를 띄우는 함수
                context: context, // 다이얼로그가 띄워질 컨텍스트 설정
                builder: (BuildContext context) {
                  // 다이얼로그 내용을 정의하는 빌더 함수
                  return AlertDialog(
                    // 알림 다이얼로그 위젯
                    title: const Text('알림버튼'), // 다이얼로그 제목
                    content: Container(
                      // 다이얼로그 내용을 감싸는 컨테이너
                      child:
                          const Text("플러터 공부를 계속 진행 하시겠습니까?"), // 다이얼로그 내용 텍스트
                    ),
                    actions: [
                      // 다이얼로그 액션 버튼들
                      TextButton(
                        // 텍스트 버튼 위젯
                        onPressed: () =>
                            Navigator.of(context).pop(), // 다이얼로그를 닫는 함수
                        child: Text('진행'), // 버튼 텍스트
                      ),
                      TextButton(
                        // 텍스트 버튼 위젯
                        onPressed: () =>
                            Navigator.of(context).pop(), // 다이얼로그를 닫는 함수
                        child: Text('취소'), // 버튼 텍스트
                      )
                    ],
                  );
                });
          },
          child: Text('플러터 버튼'), // 버튼 텍스트,
        ))));
  }
}
