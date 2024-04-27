import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RefreshIndicator 예제', // 앱의 타이틀 설정
      theme: ThemeData(
        primarySwatch: Colors.blue, // 테마의 주요 색상 설정
      ),
      home: MyHomePage(), // 앱의 첫 화면으로 MyHomePage 사용
    );
  }
}

class MyHomePage extends StatelessWidget {
  // 아이템 목록을 생성
  List<String> items = List.generate(20, (index) => "아이템 $index");

  // 새로 고침을 수행하는 비동기 함수
  Future<void> _refresh(BuildContext context) async {
    // 잠시 대기하여 새로 고침 효과를 주기 위해 Future.delayed 사용
    await Future.delayed(Duration(seconds: 2));
    // 새로 고침이 완료되었음을 사용자에게 알리는 SnackBar 표시
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('새로 고침 완료')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshIndicator 예제'), // 앱 바의 타이틀 설정
      ),
      body: RefreshIndicator(
        // 새로 고침을 수행할 함수 지정
        onRefresh: () => _refresh(context),
        child: ListView.builder(
          itemCount: items.length, // 목록의 아이템 개수 설정
          itemBuilder: (context, index) {
            // 각 아이템을 ListTile로 구성하여 반환
            return ListTile(
              title: Text(items[index]), // 아이템의 텍스트 표시
            );
          },
        ),
      ),
    );
  }
}
